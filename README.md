# Antbird

Nearly auto-generated Elasticsearch client

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

client = Antbird::Client.new.scoped(index: 'test-index', type: 'test-type')

# OR

client = Antbird::Client.new(
  url: 'http://localhost:9200',
  scope: {
    index: 'test-index',
    type: 'test-type'
  }
)

# OR

require 'faraday_middleware'
require 'faraday_middleware/aws_sigv4'
client = Antbird::Client.new(
  url: ENV['AMAZON_ELASTICSEARCH_SERVICE_URL'],
  scope: {
    index: 'test-index',
    type: 'test-type'
  }
) do |f|
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
  scope: { index: 'test-index', type: 'test-type' }
)

client.indices_exists? # => false
client.indices_create(
  settings: { number_of_shards: 1 },
  mappings: {
    'test-type': {
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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fukayatsu/antbird. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Antbird project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/fukayatsu/antbird/blob/master/CODE_OF_CONDUCT.md).
