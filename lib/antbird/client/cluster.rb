module Antbird
  class Client
    def cluster
      @cluster ||= Cluster.new(self)
    end

    class Cluster
      def initialize(client)
        @client = client
      end
      attr_reader :client

      def health(params = {})
        client.get('_cluster/health', params)
      end
    end
  end
end
