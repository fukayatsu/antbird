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

    describe '#_indices_exists' do
      it do
        expect(client.scope(index: '.kibana')._indices_exists). to eq true
      end

      it do
        expect(client.scope(index: 'not_found')._indices_exists). to eq false
      end
    end
  end
end
