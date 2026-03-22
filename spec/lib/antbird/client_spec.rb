require 'faraday/net_http_persistent'

RSpec.describe Antbird::Client do
  def trap_exception
    yield
  rescue => e
    e
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

      it 'use default adapter' do
        expect(instance.connection.adapter).to eq(Faraday::Adapter::NetHttp)
      end
    end

    context 'url specified' do
      let(:url) { 'http://localhost:9200' }
      subject(:instance) { described_class.new(url: url) }

      it 'not raise error' do
        expect { subject }.not_to raise_error
      end
    end

    context 'adapter: net_http_persistent' do
      subject(:instance) do
        described_class.new(adapter: :net_http_persistent)
      end

      it 'use net_http_persistent adapter' do
        expect(instance.connection.adapter).to eq(Faraday::Adapter::NetHttpPersistent)
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
    it 'raise RequestError for invalid body string' do
      error = trap_exception { client.search(body: 'aaa') }

      expect(error).to be_a(Antbird::Client::RequestError)
      expect(error.status).to eq 400
      expect(error.response).to be_a Faraday::Response
      expect(error.message).to include 'root_cause', 'json_parse_exception', 'reason'
    end

    it 'raise RequestError for unknown query key' do
      error = trap_exception { client.search(body: { foo: {} }) }

      expect(error).to be_a(Antbird::Client::RequestError)
      expect(error.response).to be_a Faraday::Response
      expect(error.status).to eq 400
      expect(error.message).to include 'root_cause', 'parsing_exception', 'Unknown key'
    end
  end

  describe 'api methods' do
    let(:index)  { 'test_index' }
    let(:scope) { { index: index } }
    let(:client) { described_class.new(scope: scope) }

    before { trap_exception { client.indices_delete } }

    describe '#method_missing' do
      let(:another_client) { described_class.new(scope: scope) }

      it do
        expect(another_client).to receive(:method_missing).and_call_original.once

        another_client.indices_exists?
        another_client.indices_exists?
        another_client.indices_exists?
      end
    end

    describe '#scoped' do
      let(:client) { described_class.new.scoped(index: index) }
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
          properties: {
            field1: { type: :text }
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
        expect(client.indices_get_mapping.dig('test_index', 'mappings', 'properties', 'field1', 'type')).to eq('text')

        match_all_query = { query: { match_all: {} } }
        match_foo_query = { query: { match: {field1: 'foo' } } }
        match_bar_query = { query: { match: {field1: 'bar' } } }
        match_baz_query = { query: { match: {field1: 'baz' } } }

        expect_count(client.search(body: match_all_query, timeout: '5s'), 0)

        # `timeout` param should be dropped if nil
        client.index(id: 'doc-1', body: { field1: 'foo bar' }, timeout: nil)
        expect(client.last_request[:method]).to eq(:put)

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
      let(:mappings) do
        {
          properties: {
            field1: { type: :text }
          }
        }
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
      let(:mappings) do
        {
          properties: {
            field1: { type: :text }
          }
        }
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
      let(:mappings) do
        {
          properties: {
            field1: { type: :text }
          }
        }
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

  describe '#validate_params' do
    let(:client) { described_class.new }
    let(:api_spec) do
      {
        'url' => { 'paths' => [{ 'path' => '/_search', 'methods' => ['GET', 'POST'] }] },
        'body' => { 'required' => true },
        'params' => {
          'timeout' => { 'type' => 'string' },
          'size' => { 'type' => 'number' },
          'explain' => { 'type' => 'boolean' },
          'q' => { 'type' => 'string', 'required' => true }
        }
      }
    end
    let(:path_params) { [:index] }

    it 'raises ArgumentError when body is required but missing' do
      expect {
        client.send(:validate_params, api_spec, { q: 'test' }, path_params)
      }.to raise_error(ArgumentError, 'Body is missing')
    end

    it 'raises ArgumentError for unknown parameters' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, q: 'test', unknown_param: 'value' }, path_params)
      }.to raise_error(ArgumentError, /Unknown parameters: unknown_param/)
    end

    it 'raises ArgumentError when required parameter is missing' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, timeout: '5s' }, path_params)
      }.to raise_error(ArgumentError, /Required parameter missing: q/)
    end

    it 'raises ArgumentError for invalid boolean parameter' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, q: 'test', explain: 'yes' }, path_params)
      }.to raise_error(ArgumentError, /Parameter 'explain' must be a boolean/)
    end

    it 'raises ArgumentError for invalid number parameter' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, q: 'test', size: 'abc' }, path_params)
      }.to raise_error(ArgumentError, /Parameter 'size' must be a number/)
    end

    it 'accepts valid parameters' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, q: 'test', timeout: '5s', size: 10, explain: true }, path_params)
      }.not_to raise_error
    end

    it 'accepts path params' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, q: 'test', index: 'my-index' }, path_params)
      }.not_to raise_error
    end

    it 'accepts special params (method, read_timeout)' do
      expect {
        client.send(:validate_params, api_spec, { body: {}, q: 'test', method: :get, read_timeout: 10 }, path_params)
      }.not_to raise_error
    end

    it 'skips param name/type validation when api_spec has no params' do
      spec_without_params = {
        'url' => { 'paths' => [{ 'path' => '/_refresh', 'methods' => ['POST'] }] }
      }
      expect {
        client.send(:validate_params, spec_without_params, { anything: 'goes' }, [])
      }.not_to raise_error
    end
  end

  describe '#version' do
    subject(:instance) { described_class.new }

    context 'status 200' do
      before do
        response = double(Faraday::Response)
        allow(response).to receive(:status).and_return(200)
        allow(response).to receive(:body).and_return({ 'version' => { 'number' => '3.0.0' }})
        expect(instance.connection).to receive(:get).with('/').and_return(response)
      end

      it do
        expect(instance.version).to eq('3.0.0')
      end
    end

    context 'status 401' do
      before do
        response = double(Faraday::Response)
        allow(response).to receive(:status).and_return(401)
        allow(response).to receive(:body).and_return({ 'status' => 'error', 'message' => 'access denied' })
        expect(instance.connection).to receive(:get).with('/').and_return(response)
      end

      it do
        expect do
          instance.version
        end.to raise_error(Antbird::Client::RequestError)
      end
    end

    context 'status 502' do
      before do
        response = double(Faraday::Response)
        allow(response).to receive(:status).and_return(502)
        allow(response).to receive(:body).and_return({ 'status' => 'error', 'message' => 'access denied' })
        expect(instance.connection).to receive(:get).with('/').and_return(response)
      end

      it do
        expect do
          instance.version
        end.to raise_error(Antbird::Client::RequestError)
      end
    end
  end
end
