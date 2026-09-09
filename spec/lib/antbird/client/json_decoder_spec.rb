RSpec.describe Antbird::Client::JsonDecoder do
  describe '.parse' do
    let(:body) { '{"acknowledged":true}' }

    # Faraday calls the decoder as `parse(body, parser_options)`, so the options
    # arrive positionally even when empty. json 3.0 dropped support for a
    # positional options Hash on JSON.parse.
    it 'parses without options' do
      expect(described_class.parse(body)).to eq('acknowledged' => true)
    end

    it 'parses with empty options' do
      expect(described_class.parse(body, {})).to eq('acknowledged' => true)
    end

    it 'parses with nil options' do
      expect(described_class.parse(body, nil)).to eq('acknowledged' => true)
    end

    it 'passes options through to JSON.parse' do
      expect(described_class.parse(body, symbolize_names: true)).to eq(acknowledged: true)
    end
  end
end
