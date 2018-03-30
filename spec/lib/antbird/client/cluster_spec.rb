RSpec.describe Antbird::Client::Cluster do
  subject(:cluster) { Antbird::Client.new.cluster }

  describe '#health' do
    it do
      expect(cluster.health).to eq {}
    end
  end
end
