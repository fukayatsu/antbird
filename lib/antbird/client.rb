require 'antbird/client/cluster'

module Antbird
  class Client
    def initialize(url: "http://localhost:9200")
      @url = url
    end

    def get(path, params = {})
      request :get, path, params
    end

    def put(path, params = {})
      request :put, path, params
    end

    def post(path, params = {})
      request :post, path, params
    end

    def delete(path, params = {})
      request :delete, path, params
    end

    def request(method)
      read_timeout = params.delete(:read_timeout)
      response =
        case method
        when :head
          connection.head(path) { |req| req.options[:timeout] = read_timeout if read_timeout }

        when :get
          connection.get(path) { |req|
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          }

        when :put
          connection.put(path, body) { |req| req.options[:timeout] = read_timeout if read_timeout }

        when :post
          connection.post(path, body) { |req| req.options[:timeout] = read_timeout if read_timeout }

        when :delete
          connection.delete(path) { |req|
            req.body = body if body
            req.options[:timeout] = read_timeout if read_timeout
          }

        else
          raise ArgumentError, "unknown HTTP request method: #{method.inspect}"
        end
    end
  end
end
