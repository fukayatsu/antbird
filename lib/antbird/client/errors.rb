module Antbird
  class Client
    class Error < StandardError; end

    class ApiError < Error
      def initialize(response)
        @response = response
        @status   = response.status

        body = response.body
        @error = body["error"] if body.is_a?(Hash) && body.key?("error")

        message = @error || body.to_s
        super message
      end
      attr_reader :response, :status
    end

    class ServerError < ApiError; end
    class RequestError < ApiError; end
  end
end
