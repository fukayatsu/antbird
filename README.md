# Antbird

Nearly auto-generated OpenSearch client (supports OpenSearch 3.x)

[![Build Status](https://github.com/fukayatsu/antbird/workflows/build-os/badge.svg)](https://github.com/fukayatsu/antbird/actions)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'antbird'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install antbird

## Usage

### Client

```ruby
client = Antbird::Client.new

# OR

client = Antbird::Client.new.scoped(index: 'test-index')

# OR

client = Antbird::Client.new(
  url: 'http://localhost:9200',
  scope: {
    index: 'test-index',
  }
)

# OR with AWS OpenSearch Service

require 'faraday/net_http_persistent'
require 'faraday_middleware/aws_sigv4'
client = Antbird::Client.new(
  url: ENV['AMAZON_OPENSEARCH_SERVICE_URL'],
  scope: {
    index: 'test-index',
  },
  adapter: :net_http_persistent
) do |f|
  # https://github.com/winebarrel/faraday_middleware-aws-sigv4
  f.request(
    :aws_sigv4,
    service: 'es',
    region: 'ap-northeast-1',
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  )
end
```

### Call APIs

```ruby
client = Antbird::Client.new(
  scope: { index: 'test-index' }
)

client.indices_exists? # => false
client.indices_create(
  body: {
    settings: { number_of_shards: 1 },
    mappings: {
      properties: {
        field1: { type: :text }
      }
    }
  }
)

client.indices_exists? # => true

client.index(id: 'doc-1', body: { field1: 'foo bar' })

client.indices_refresh

client.search(body: { query: { match_all: {} } })

client.bulk(body: [
  { index: { _id: 'doc-1' } },
  { field1: 'aaa' },
  { index: { _id: 'doc-2' } },
  { field1: 'bbb' },
  { index: { _id: 'doc-3' } },
  { field1: 'ccc' },
])
```

### Timeouts

Default connection timeouts are configured when the client is created:

```ruby
client = Antbird::Client.new(
  read_timeout: 5,   # seconds (default)
  open_timeout: 2,   # seconds (default)
  write_timeout: 30, # seconds (default: nil => falls back to read_timeout)
)
```

`write_timeout` is optional. When omitted it is left unset and the adapter
falls back to `read_timeout` for the write phase, preserving existing behavior.

Timeouts can be overridden per operation. There are two ways to do it:

1. `http_timeout` — a shorthand that sets the `read`, `open` and `write`
   timeouts all at once for that single request:

   ```ruby
   # This request alone uses a 60s timeout for read/open/write.
   client.search(body: { query: { match_all: {} } }, http_timeout: 60)

   # Long-running reindex; give it more time without affecting other calls.
   client.reindex(body: { source: { index: 'a' }, dest: { index: 'b' } }, http_timeout: 600)
   ```

2. `read_timeout` / `open_timeout` / `write_timeout` — override individual
   phases. These may be combined with each other:

   ```ruby
   client.bulk(body: [...], open_timeout: 3, write_timeout: 30)
   ```

When none of these is given, the client falls back to the values configured at
initialization time.

`http_timeout` is mutually exclusive with `read_timeout` / `open_timeout` /
`write_timeout`. Passing `http_timeout` together with any of them raises an
`ArgumentError`:

```ruby
client.search(body: {...}, http_timeout: 60, open_timeout: 3) # => ArgumentError
```

All of the above are client-side (HTTP) timeouts and do not collide with the
server-side `timeout` query parameter that some OpenSearch APIs accept — both
can be passed together:

```ruby
client.bulk(
  body: [...],
  timeout: '30s',    # OpenSearch server-side timeout (query parameter)
  http_timeout: 60,  # HTTP read/open/write timeout (Faraday)
)
```

> `read_timeout` sets Faraday's global `:timeout` (preserving its original
> behavior), while `open_timeout` / `write_timeout` set those specific phases.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fukayatsu/antbird. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

### How to support newer version of OpenSearch

1. Add OpenSearch version to `jobs.build.strategy.matrix.search_versions` on `.github/workflows/build-os.yml`
   - Only one line for `x.y.*` version
1. `script/generate_api_methods`
   - Set `GITHUB_TOKEN=***` env for GitHub API Limit

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Antbird project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/fukayatsu/antbird/blob/master/CODE_OF_CONDUCT.md).
