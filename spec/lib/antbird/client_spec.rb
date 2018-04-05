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

    before { client.indices_delete }

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
      it do
        expect(client.indices_exists?). to eq false

        client.indices_create(
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

        expect(client.indices_exists?). to eq true

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
          mappings: {
            type => {
              properties: {
                field1: { type: :text }
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
          mappings: {
            type => {
              properties: {
                field1: { type: :text }
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
          mappings: {
            type => {
              properties: {
                field1: { type: :text }
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
