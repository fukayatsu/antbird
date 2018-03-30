require 'faraday'
require 'faraday_middleware'

module Antbird
  class Client
    def initialize(
      scope = {},
      url: "http://localhost:9200",
      version: '5.5.3',
      read_timeout: 5,
      open_timeout: 2
    )
      @scope     = {}
      @url       = url
      @version   = version

      @read_timeout = read_timeout
      @open_timeout = open_timeout

      @api_specs = {}

      class_version = version.split('.')[0,2].join('_')

      require "antbird/rest_api/rest_api_v#{class_version}"
      extend Antbird::RestApi.const_get "RestApiV#{class_version}"
    end
    attr_reader :scope, :url, :version
    attr_reader :read_timeout, :open_timeout
    attr_reader :api_specs

    def scope(new_scope)
      Client.new(new_scope, url: @url, version: @version)
    end

    def request(api_spec, params)
      # TODO: embed
      path   = api_spec['url']['paths'].find { |path| path.count('{') == @scope.count  }
      method = api_spec['methods'].first.downcase.to_sym

      read_timeout = params.delete(:read_timeout)
      body = extract_body(params)

      response =
        case method
        when :head
          connection.head(path) { |req| req.options[:timeout] = read_timeout if read_timeout }
        when :get
          connection.get(path) { |req|
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          }
        # when :post # TODO
        else
          raise ArgumentError, "unknown HTTP request method: #{method.inspect}"
        end

      response.body
    end

    def extract_body(params)
      body = params.delete :body
      return if body.nil?

      body =
        case body
        when String
          body
        when Array
          body << nil unless body.last.nil?
          body.join "\n"
        else
          JSON.dump(body)
        end

      # Prevent excon from changing the encoding (see https://github.com/github/elastomer-client/issues/138)
      body.freeze
    end

    def connection
      @connection ||= Faraday.new(url) do |conn|
        # TODO: bulkのところはndjsonなのでこれだとダメかも
        conn.request :json
        conn.response :json, :content_type => /\bjson$/

        conn.options[:timeout]      = read_timeout
        conn.options[:open_timeout] = open_timeout

        conn.adapter Faraday.default_adapter
      end
    end
  end
end