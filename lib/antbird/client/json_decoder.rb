require 'json'

module Antbird
  class Client
    # Faraday's JSON response middleware hands parser options to the decoder as
    # a positional Hash (`decoder.parse(body, options)`). json 3.0 turned
    # JSON.parse into `parse(source, **options)`, so that call raises
    # ArgumentError and every response fails with Faraday::ParsingError.
    # Decoding through here keeps antbird working on both json 2.x and 3.x.
    module JsonDecoder
      module_function

      def parse(body, options = {})
        return ::JSON.parse(body) if options.nil? || options.empty?

        ::JSON.parse(body, **options)
      end
    end
  end
end
