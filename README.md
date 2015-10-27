# CsvToSeeds

Take a CSV document and turn it into a series of ActiveRecord creations to be used in a Seed file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'csv_to_seeds'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install csv_to_seeds

## Usage

csv-to-seeds person.csv >> seeds.rb

csv-to-seeds -m Person records.csv >> seeds.rb

## Requirements

File must be a CSV file, using comma's as the delimiter

File must have a header that specifies the fields.

Script will downcase and parameterize the column names.

## Conventions

If a model name is not specified, it will use the name of the file as the Model name.

You can specify a specific model name (case-sensitive) with the -m flag.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jeffharrington/csv_to_seeds.








