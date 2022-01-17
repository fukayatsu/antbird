require 'faraday'
require 'faraday_middleware'
require 'antbird/client/errors'

module Antbird
  class Client
    def initialize(
      scope: {},
      url: "http://localhost:9200",
      version: nil,
      distribution: nil,
      read_timeout: 5,
      open_timeout: 2,
      adapter: ::Faraday.default_adapter,
      &block)

      @read_timeout = read_timeout
      @open_timeout = open_timeout
      @adapter      = adapter
      @block        = block
      @url          = url

      @scope        = scope.transform_keys(&:to_sym)

      if version
        @version      = version
        @distribution = distribution
      end

      @api_specs = {}
    end
    attr_reader :scope, :url, :distribution
    attr_reader :read_timeout, :open_timeout, :adapter
    attr_reader :api_specs, :last_request

    def scoped(new_scope = {})
      Client.new(
        scope: new_scope,
        url: url,
        version: version,
        distribution: distribution,
        read_timeout: read_timeout,
        open_timeout: open_timeout
      )
    end

    def request(api_name, api_spec, params)
      validate_params(api_spec, params)

      body   = extract_body(params)
      scopes = extract_scopes(params)
      forced_method = extract_method(params)

      # Greedy match
      api_path = nil
      api_path_template = nil
      path_methods = nil
      sort_url_paths(api_spec['url']['paths']).each do |path|
        if path.is_a?(Hash)
          path_methods = path['methods']
          path = path['path']
        end

        embeded = path.gsub(/{([a-z_\-}]+)}/) do |match|
          scopes[$1.to_sym] || @scope[$1.to_sym] || match
        end

        unless embeded.include?('{')
          api_path_template = path
          api_path = embeded
          break
        end
      end

      unless api_path
        raise "API path not found: paths: #{api_spec['url']['paths']}, scope: #{@scope}"
      end

      methods = (path_methods || api_spec['methods']).map { |m| m.downcase.to_sym }
      method =
        if forced_method
          forced_method
        elsif methods.include?(:put)
          :put
        elsif methods.include?(:post)
          :post
        else
          methods.first
        end

      read_timeout = params.delete(:read_timeout)
      params.reject! { |_, v| v.nil? }

      @last_request = {
        method: method,
        forced_method: forced_method,
        api_path: api_path,
        api_path_template: api_path_template,
        params: params
      }

      response =
        case method
        when :head
          connection.head(api_path) do |req|
            req.params = params unless params.empty?
            req.options[:timeout] = read_timeout if read_timeout
          end
        when :get
          connection.get(api_path) do |req|
            req.params = params unless params.empty?
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          end
        when :put
          connection.put(api_path, body) do |req|
            req.params = params unless params.empty?
            req.options[:timeout] = read_timeout if read_timeout
          end
        when :post
          connection.post(api_path, body) do |req|
            req.params = params unless params.empty?
            req.options[:timeout] = read_timeout if read_timeout
          end
        when :delete
          connection.delete(api_path) do |req|
            req.params = params unless params.empty?
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          end
        else
          raise ArgumentError, "Unknown HTTP request method: #{method.inspect}"
        end

      if method == :head
        case response.status
        when 200
          return true
        when 404
          return false
        end
      end

      handle_errors!(response)
      response.body
    end

    def extract_method(params)
      params.delete(:method)&.to_sym
    end

    def extract_scopes(params)
      scopes = {}
      [:index, :type, :id].each do |s|
        scope = params.delete(s)
        next unless scope
        scopes[s] = scope
      end
      scopes
    end

    def extract_body(params)
      body = params.delete :body
      return if body.nil?

      body =
        case body
        when String
          body
        when Array
          if body.all? { |b| b.is_a?(Hash) }
            body.map { |b| JSON.dump(b) }.join("\n") + "\n"
          else
            body << nil unless body.last.nil?
            body.join "\n"
          end
        else
          JSON.dump(body)
        end

      # Prevent excon from changing the encoding (see https://github.com/github/elastomer-client/issues/138)
      body.freeze
    end

    def connection
      @connection ||= Faraday.new(url) do |conn|
        @block&.call(conn)

        conn.request :json
        conn.response :json, content_type: /\bjson$/

        conn.options[:timeout]      = read_timeout
        conn.options[:open_timeout] = open_timeout

        conn.adapter adapter
      end
    end

    def elasticsearch?
      !opensearch?
    end

    def opensearch?
      ensure_version_and_distribution

      distribution == 'opensearch'
    end

    def elasticsearch_v7_0_compatible?
      return true if opensearch?

      elasticsearch? && Gem::Version.new(version) >= Gem::Version.new('7.0.0')
    end

    def elasticsearch_v7_6_compatible?
      return true if opensearch?

      elasticsearch? && Gem::Version.new(version) >= Gem::Version.new('7.6.0')
    end

    def version
      return @version if @version

      ensure_version_and_distribution
      @version
    end

    private

    # NOTE: stable sort
    def sort_url_paths(url_paths)
      i = 0
      url_paths.sort_by do |path|
        if path.is_a?(Hash)
          [-path['path'].count('{'), (path['deprecated'] ? 1 : 0), i += 1]
        else
          [-path.count('{'), i += 1]
        end
      end
    end

    def handle_errors!(response)
      if response.status >= 500
        raise ServerError, response
      elsif response.body.is_a?(Hash) && response.body.key?("error")
        raise RequestError, response
      end
    end

    def validate_params(api_spec, params)
      # TODO case: required parameter is missing
      # TODO case: invalid parameter name
      # TODO case: invalid parameter format
      if api_spec.dig('body', 'required') && !params.key?(:body)
        raise ArgumentError, 'Body is missing'
      end
    end

    def ensure_version_and_distribution
      return if @version

      response = connection.get('/')
      if response.status == 401
        raise Antbird::Client::RequestError.new(response)
      end

      version_hash = response.body.dig('version')
      @version = version_hash['number']
      @distribution = version_hash['distribution']
    end

    def class_version
      version.split('.')[0, 2].join('_')
    end

    def ensure_api_spec_loaded
      return if api_specs_loaded?

      ensure_version_and_distribution

      if opensearch?
        require "antbird/rest_api/rest_api_opensearch_v#{class_version}"
        extend Antbird::RestApi.const_get "RestApiOpensearchV#{class_version}"
      else
        require "antbird/rest_api/rest_api_v#{class_version}"
        extend Antbird::RestApi.const_get "RestApiV#{class_version}"
      end

      @api_specs_loaded = true
    end

    def api_specs_loaded?
      !!@api_specs_loaded
    end

    def method_missing(name, *args, &block)
      return super if api_specs_loaded?

      ensure_api_spec_loaded

      return super unless respond_to?(name)
      __send__(name, *args, &block)
    end
  end
end
