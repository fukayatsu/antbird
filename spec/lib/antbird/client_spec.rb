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
    let(:index)  { 'test_index' }
    let(:type)   { 'test_type' }
    let(:client) { described_class.new(scope: { index: index, type: type }) }

    before { client._indices_delete }

    describe '#_indices_create, #_indices_exists' do

      it do
        expect(client._indices_exists). to eq false
        client._indices_create
        expect(client._indices_exists). to eq true
      end
    end

    describe '#_index and #_search' do
      it do
        expect(client._indices_exists). to eq false

        client._indices_create(
          settings: {
            number_of_shards: 1
          },
          mappings: {
            type => {
              properties: {
                field1: { type: :text }
              }
            }
          }
        )

        expect(client._indices_exists). to eq true

        match_all_query = { query: { match_all: {} } }
        match_foo_query = { query: { match: {field1: 'foo' } } }
        match_bar_query = { query: { match: {field1: 'bar' } } }
        match_baz_query = { query: { match: {field1: 'baz' } } }

        expect(client._search(body: match_all_query)['hits']['total']).to eq 0

        client._index(id: 'doc-1', body: { field1: 'foo bar' })
        client._indices_refresh

        expect(client._search(body: match_all_query)['hits']['hits'].first['_id']).to eq('doc-1')

        expect(client._search(body: match_all_query)['hits']['total']).to eq 1
        expect(client._search(body: match_foo_query)['hits']['total']).to eq 1
        expect(client._search(body: match_bar_query)['hits']['total']).to eq 1
        expect(client._search(body: match_baz_query)['hits']['total']).to eq 0

        client._delete(id: 'doc-1')
        client._indices_refresh
        expect(client._search(body: match_all_query)['hits']['total']).to eq 0
      end
    end
  end
end
