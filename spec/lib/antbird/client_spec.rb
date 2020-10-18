RSpec.describe Antbird::Client do
  def trap_exception
    yield
  rescue => e
    e
  end

  def elasticsearch_v7?
    es_version = described_class.new.send(:fetch_version)
    Gem::Version.new(es_version) >= Gem::Version.new('7.0.0')
  end

  def expect_count(response, expected)
    hits_total = response['hits']['total']
    count = hits_total.is_a?(Hash) ? hits_total['value'] : hits_total
    expect(count).to eq(expected)
  end

  describe '#initialize' do
    context 'url not specified' do
      subject(:instance) { described_class.new }

      it 'not raise error' do
        expect { subject }.not_to raise_error
      end

      it 'not call request' do
        expect_any_instance_of(Faraday::Connection).not_to receive(:request)
      end
    end

    context 'url specified' do
      let(:url) { 'http://localhost:9200' }
      subject(:instance) { described_class.new(url: url) }

      it 'not raise error' do
        expect { subject }.not_to raise_error
      end
    end

    context 'faraday_middleware' do
      subject(:instance) do
        client = described_class.new do |f|
          f.request :foo_middleware
        end
        client.cat_indices
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

      if Gem::Version.create(client.version) >= Gem::Version.create('7.6.0')
        expect(error).to be_a(Antbird::Client::RequestError)
        expect(error.status).to eq 400
        expect(error.message).to include "Unrecognized token 'aaa'"
      else
        expect(error).to be_a(Antbird::Client::ServerError)
        expect(error.status).to eq 500
        expect(error.message).to include 'root_cause', 'json_parse_exception', 'reason'
      end

      expect(error.response).to be_a Faraday::Response
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
    let(:scope) do
      if elasticsearch_v7?
        { index: index }
      else
        { index: index, type: type }
      end
    end
    let(:client) { described_class.new(scope: scope) }

    before { trap_exception { client.indices_delete } }

    describe '#method_missing' do
      let(:scope) do
        if elasticsearch_v7?
          { index: index }
        else
          { index: index, type: type }
        end
      end
      let(:another_client) { described_class.new(scope: scope) }

      it do
        expect(another_client).to receive(:method_missing).and_call_original.once

        another_client.indices_exists?
        another_client.indices_exists?
        another_client.indices_exists?
      end
    end

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
      let(:properties_hash) do
        {
          properties: {
            field1: { type: :text }
          }
        }
      end
      let(:mappings) do
        if elasticsearch_v7?
          properties_hash
        else
          { type => properties_hash }
        end
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

        if elasticsearch_v7?
          expect(client.indices_get_mapping.dig('test_index', 'mappings', 'properties', 'field1', 'type')).to eq('text')
        else
          expect(client.indices_get_mapping.dig('test_index', 'mappings', 'test_type', 'properties', 'field1', 'type')).to eq('text')
        end

        match_all_query = { query: { match_all: {} } }
        match_foo_query = { query: { match: {field1: 'foo' } } }
        match_bar_query = { query: { match: {field1: 'bar' } } }
        match_baz_query = { query: { match: {field1: 'baz' } } }

        expect_count(client.search(body: match_all_query, timeout: '5s'), 0)

        # `timeout` param should be dropped if nil
        client.index(id: 'doc-1', body: { field1: 'foo bar' }, timeout: nil)
        client.indices_refresh

        expect(client.search(body: match_all_query)['hits']['hits'].first['_id']).to eq('doc-1')

        expect_count(client.search(body: match_all_query), 1)
        expect_count(client.search(body: match_foo_query), 1)
        expect_count(client.search(body: match_bar_query), 1)
        expect_count(client.search(body: match_baz_query), 0)

        client.delete(id: 'doc-1')
        client.indices_refresh

        expect_count(client.search(body: match_all_query), 0)
      end
    end

    describe '#delete_by_query' do
      let(:properties_hash) do
        {
          properties: {
            field1: { type: :text }
          }
        }
      end
      let(:mappings) do
        if elasticsearch_v7?
          properties_hash
        else
          { type => properties_hash }
        end
      end

      it do
        client.indices_create(
          body: {
            mappings: mappings
          }
        )

        client.index(id: 'doc-1', body: { field1: 'aaa' })
        client.index(id: 'doc-2', body: { field1: 'bbb' })
        client.index(id: 'doc-3', body: { field1: 'bbb' })
        client.indices_refresh

        match_all_query = { query: { match_all: {} } }
        match_bbb_query = { query: { match: {field1: 'bbb' } } }

        expect_count(client.search(body: match_all_query), 3)
        expect_count(client.search(body: match_bbb_query), 2)

        client.delete_by_query(body: match_bbb_query)
        client.indices_refresh

        expect_count(client.search(body: match_all_query), 1)
        expect_count(client.search(body: match_bbb_query), 0)
      end
    end

    describe '#update_by_query' do
      let(:properties_hash) do
        {
          properties: {
            field1: { type: :text }
          }
        }
      end

      let(:mappings) do
        if elasticsearch_v7?
          properties_hash
        else
          { type => properties_hash }
        end
      end

      it do
        client.indices_create(body: { mappings: mappings })

        client.index(id: 'doc-1', body: { field1: 'aaa' })
        client.index(id: 'doc-2', body: { field1: 'bbb' })
        client.index(id: 'doc-3', body: { field1: 'bbb' })
        client.indices_refresh

        match_all_query = { query: { match_all: {} } }
        match_bbb_query = { query: { match: { field1: 'bbb' } } }
        match_ccc_query = { query: { match: { field1: 'ccc' } } }

        expect_count(client.search(body: match_all_query), 3)
        expect_count(client.search(body: match_bbb_query), 2)

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

        expect_count(client.search(body: match_all_query), 3)
        expect_count(client.search(body: match_ccc_query), 2)
      end
    end

    describe '#bulk' do
      let(:properties_hash) do
        {
          properties: {
            field1: { type: :text }
          }
        }
      end

      let(:mappings) do
        if elasticsearch_v7?
          properties_hash
        else
          { type => properties_hash }
        end
      end

      it do
        client.indices_create(
          body: {
            mappings: mappings
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

        expect_count(client.search(body: match_all_query), 3)
        expect_count(client.search(body: match_bbb_query), 1)

        result = client.bulk(body: [
          { index: { _id: 1 } },
          { field1: 'bbb' },
          { index: { _id: 2 } },
          { field1: 'bbb' },
          { delete: { _id: 3 } },
        ])
        client.indices_refresh

        expect_count(client.search(body: match_all_query), 2)
        expect_count(client.search(body: match_bbb_query), 2)
      end
    end
  end
end
