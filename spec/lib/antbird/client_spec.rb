RSpec.describe Antbird::Client do
  describe '#initialize' do
    context 'url not specified' do
      subject(:instance) { described_class.new }
      it do
        expect { subject }.not_to raise_error
      end
    end

    context 'url specified' do
      let(:url) { 'http://example.com:9200' }
      subject(:instance) { described_class.new(url: url) }
      it do
        expect { subject }.not_to raise_error
      end
    end
  end

  describe 'api methods' do
    let(:client) { described_class.new }
    describe '#_cluster_health' do
      subject { client._cluster_health }

      it do
        expect(subject.keys).to match_array([
          "cluster_name",
          "status",
          "timed_out",
          "number_of_nodes",
          "number_of_data_nodes",
          "active_primary_shards",
          "active_shards",
          "relocating_shards",
          "initializing_shards",
          "unassigned_shards",
          "delayed_unassigned_shards",
          "number_of_pending_tasks",
          "number_of_in_flight_fetch",
          "task_max_waiting_in_queue_millis",
          "active_shards_percent_as_number"
        ])
      end
    end
  end
end
