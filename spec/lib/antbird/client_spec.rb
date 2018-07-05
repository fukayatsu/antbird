RSpec.describe Antbird::Client do

  def trap_exception
    yield
  rescue => e
    e
  end

  describe '#initialize' do
    context 'url not specified' do
      subject(:instance) { described_class.new }
      it do
        expect { subject }.not_to raise_error
      end
    end

    context 'url specified' do
      let(:url) { 'http://localhost:9200' }
      subject(:instance) { described_class.new(url: url) }
      it do
        expect { subject }.not_to raise_error
      end
    end

    context 'faraday_middleware' do
      subject(:instance) do
        described_class.new do |f|
          f.request :foo_middleware
        end
      end
      it do
        expect_any_instance_of(Faraday::Connection).to receive(:request).with(:foo_middleware)
        expect_any_instance_of(Faraday::Connection).to receive(:request).and_call_original
        expect { subject }.not_to raise_error
      end
    end
  end

  describe 'handle_errors' do
    let(:client) { described_class.new }
    it 'raise ServerError' do
      error = trap_exception { client.search(body: 'aaa') }

      expect(error).to be_a(Antbird::Client::ServerError)
      expect(error.response).to be_a Faraday::Response
      expect(error.status).to eq 500
      expect(error.message).to include 'root_cause', 'json_parse_exception', 'reason'
    end

    it 'raise ServerError' do
      error = trap_exception { client.search(body: { foo: {} }) }

      expect(error).to be_a(Antbird::Client::RequestError)
      expect(error.response).to be_a Faraday::Response
      expect(error.status).to eq 400
      expect(error.message).to include 'root_cause', 'parsing_exception', 'Unknown key'
    end
  end

  describe 'api methods' do
    let(:index)  { 'test_index' }
    let(:type)   { 'test_type' }
    let(:client) { described_class.new(scope: { index: index, type: type }) }

    before { trap_exception { client.indices_delete } }

    describe '#scoped' do
      let(:client) { described_class.new.scoped(index: index, type: type) }
      it do
        expect(client.indices_exists?). to eq false
        client.indices_create
        expect(client.indices_exists?). to eq true
      end
    end

    describe '#indices_create, #indices_exists?' do
      it do
        expect(client.indices_exists?). to eq false
        client.indices_create
        expect(client.indices_exists?). to eq true
      end
    end

    describe '#index and #search' do
      let(:settings) { { number_of_shards: 1 } }
      let(:mappings) do
        {
          type => {
            properties: {
              field1: { type: :text }
            }
          }
        }
      end

      it do
        expect(client.indices_exists?). to eq false

        client.indices_create(
          body: {
            settings: settings,
            mappings: mappings
          }
        )

        expect(client.indices_exists?). to eq true
        expect(client.indices_get_settings.dig('test_index', 'settings', 'index', 'number_of_shards')).to eq('1')
        expect(client.indices_get_mapping.dig('test_index', 'mappings', 'test_type', 'properties', 'field1', 'type')).to eq('text')

        match_all_query = { query: { match_all: {} } }
        match_foo_query = { query: { match: {field1: 'foo' } } }
        match_bar_query = { query: { match: {field1: 'bar' } } }
        match_baz_query = { query: { match: {field1: 'baz' } } }

        expect(client.search(body: match_all_query)['hits']['total']).to eq 0

        client.index(id: 'doc-1', body: { field1: 'foo bar' })
        client.indices_refresh

        expect(client.search(body: match_all_query)['hits']['hits'].first['_id']).to eq('doc-1')

        expect(client.search(body: match_all_query)['hits']['total']).to eq 1
        expect(client.search(body: match_foo_query)['hits']['total']).to eq 1
        expect(client.search(body: match_bar_query)['hits']['total']).to eq 1
        expect(client.search(body: match_baz_query)['hits']['total']).to eq 0

        client.delete(id: 'doc-1')
        client.indices_refresh
        expect(client.search(body: match_all_query)['hits']['total']).to eq 0
      end
    end

    describe '#delete_by_query' do
      it do
        client.indices_create(
          body: {
            mappings: {
              type => {
                properties: {
                  field1: { type: :text }
                }
              }
            }
          }
        )

        client.index(id: 'doc-1', body: { field1: 'aaa' })
        client.index(id: 'doc-2', body: { field1: 'bbb' })
        client.index(id: 'doc-3', body: { field1: 'bbb' })
        client.indices_refresh

        match_all_query = { query: { match_all: {} } }
        match_bbb_query = { query: { match: {field1: 'bbb' } } }

        expect(client.search(body: match_all_query)['hits']['total']).to eq 3
        expect(client.search(body: match_bbb_query)['hits']['total']).to eq 2

        client.delete_by_query(body: match_bbb_query)
        client.indices_refresh

        expect(client.search(body: match_all_query)['hits']['total']).to eq 1
        expect(client.search(body: match_bbb_query)['hits']['total']).to eq 0
      end
    end

    describe '#update_by_query' do
      it do
        client.indices_create(
          body: {
            mappings: {
              type => {
                properties: {
                  field1: { type: :text }
                }
              }
            }
          }
        )

        client.index(id: 'doc-1', body: { field1: 'aaa' })
        client.index(id: 'doc-2', body: { field1: 'bbb' })
        client.index(id: 'doc-3', body: { field1: 'bbb' })
        client.indices_refresh

        match_all_query = { query: { match_all: {} } }
        match_bbb_query = { query: { match: {field1: 'bbb' } } }
        match_ccc_query = { query: { match: {field1: 'ccc' } } }

        expect(client.search(body: match_all_query)['hits']['total']).to eq 3
        expect(client.search(body: match_bbb_query)['hits']['total']).to eq 2

        client.update_by_query(
          conflicts: :proceed,
          body: match_bbb_query.merge(
            script: {
              lang: :painless,
              inline: "ctx._source.field1 = 'ccc'"
            }
          )
        )
        client.indices_refresh

        expect(client.search(body: match_all_query)['hits']['total']).to eq 3
        expect(client.search(body: match_ccc_query)['hits']['total']).to eq 2
      end
    end

    describe '#bulk' do
      it do
        client.indices_create(
          body: {
            mappings: {
              type => {
                properties: {
                  field1: { type: :text }
                }
              }
            }
          }
        )

        result = client.bulk(body: [
          { index: { _id: 1 } },
          { field1: 'aaa' },
          { index: { _id: 2 } },
          { field1: 'bbb' },
          { index: { _id: 3 } },
          { field1: 'ccc' },
        ])

        client.indices_refresh

        match_all_query = { query: { match_all: {} } }
        match_bbb_query = { query: { match: {field1: 'bbb' } } }

        expect(client.search(body: match_all_query)['hits']['total']).to eq 3
        expect(client.search(body: match_bbb_query)['hits']['total']).to eq 1

        result = client.bulk(body: [
          { index: { _id: 1 } },
          { field1: 'bbb' },
          { index: { _id: 2 } },
          { field1: 'bbb' },
          { delete: { _id: 3 } },
        ])
        client.indices_refresh

        expect(client.search(body: match_all_query)['hits']['total']).to eq 2
        expect(client.search(body: match_bbb_query)['hits']['total']).to eq 2
      end
    end
  end
end
