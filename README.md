# ApiScraper

A Gem for fetching data from an API and saving it.

There is absolutely **no security in place**. *Use at your own risk*. Feel free to look at the issues and assist!

## Installation

```ruby
gem 'api_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install api_scraper

## Usage

Console application usage:

To save a generic file:
`api_scraper http://path.com/to/your/api file_name_to_save_to.json`

To save the file as JSON:
`api_scraper http://path.com/to/your/api file_name_to_save_to.json json`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/code-for-coffee/api_scraper/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
