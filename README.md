# JsonSchemaRefParser

I created json_schema_ref_parser because I couldn't find a ruby version that did
the same thing as the
[json-schema-ref-parser](https://github.com/BigstickCarpet/json-schema-ref-parser)
npm package.

The feature set is pretty small right now and really only solves my current specific use
case for converting swagger yaml documents that contain local references ($ref)
to one large json object (that you can write to a file).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'json_schema_ref_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install json_schema_ref_parser

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/oblakeerickson/json_schema_ref_parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

