require 'faraday'
require 'faraday_middleware'

module Antbird
  class Client
    def initialize(
      scope: {},
      url: "http://localhost:9200",
      version: nil,
      read_timeout: 5,
      open_timeout: 2)

      @read_timeout = read_timeout
      @open_timeout = open_timeout
      @url       = url

      @scope     = scope.transform_keys(&:to_sym)
      @version   = version || fetch_version

      @api_specs = {}

      class_version = @version.split('.')[0,2].join('_')

      require "antbird/rest_api/rest_api_v#{class_version}"
      extend Antbird::RestApi.const_get "RestApiV#{class_version}"
    end
    attr_reader :scope, :url, :version
    attr_reader :read_timeout, :open_timeout
    attr_reader :api_specs

    def scoped(new_scope = {})
      Client.new(
        scope: new_scope,
        url: url,
        version: version,
        read_timeout: read_timeout,
        open_timeout: open_timeout
      )
    end

    def request(api_name, api_spec, params)
      body   = extract_body(params)
      scopes = extract_scopes(params)

      # 長い方からチェック
      api_path = nil
      api_spec['url']['paths'].sort { |a, b| b.size <=> a.size }.each do |path|
        embeded = path.gsub(/{([a-z_\-}]+)}/) do |match|
          scopes[$1.to_sym] || @scope[$1.to_sym] || match
        end

        break api_path = embeded unless embeded.include?('{')
      end

      unless api_path
        raise "API path not found: paths: #{api_spec['url']['paths']}, scope: #{@scope}"
      end

      methods = api_spec['methods'].map(&:downcase).map(&:to_sym)
      method = methods.include?(:post) ? :post : methods.first

      read_timeout = params.delete(:read_timeout)

      response =
        case method
        when :head
          connection.head(api_path) { |req| req.options[:timeout] = read_timeout if read_timeout }
        when :get
          connection.get(api_path) { |req|
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          }
        when :put
          connection.put(api_path, body) { |req| req.options[:timeout] = read_timeout if read_timeout }
        when :post
          connection.post(api_path, body) do |req|
            req.params = params unless params.empty?
            req.options[:timeout] = read_timeout if read_timeout
          end
        when :delete
          connection.delete(api_path) do |req|
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          end
        else
          raise ArgumentError, "unknown HTTP request method: #{method.inspect}"
        end

      if method == :head
        case response.status
        when 200
          true
        when 404
          false
        else
          raise 'error'
        end
      else
        response.body
      end

      # TODO: handle errors
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
        conn.request :json
        conn.response :json, :content_type => /\bjson$/

        conn.options[:timeout]      = read_timeout
        conn.options[:open_timeout] = open_timeout

        conn.adapter Faraday.default_adapter
      end
    end

    private

    def fetch_version
      connection.get('/').body.dig('version', 'number')
    end
  end
end
