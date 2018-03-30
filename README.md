# Antbird


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

### client

```ruby
client = Antbird::Client.new

# OR

client = Antbird::Client.new(url: 'http://localhost:9200')
```

### Cluster

```ruby
client.cluster.health

```

### Index

```ruby

index = client.index('books')
index.create(
  settings: { 'index.number_of_shards' => 3 },
  mappings: {
    book: {
      _source: { :enabled => true },
      _all:    { :enabled => false },
      properties: {
        author: { type: 'text', index: 'not_analyzed' },
        content:  { type: 'text', analyze: 'standard' }
      }
    }
  }
)

index.exists?
index.exists?(type: 'book')
index.delete
```

### Documents

```ruby
docs = client.documents('books')
docs.index(
  _id:    1,
  _type:  'book',
  author: 'foo',
  content:  'foo bar baz'
)

docs.search({ query: { match_all: {} } }, size: 0)
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
