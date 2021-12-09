# Primarity

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/primarity`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'primarity'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install primarity

## Usage

### on code
Before usage, write code below:
```ruby:
require 'primarity'
```

Also, you can test primarity of integer.
```ruby:
2.prime? #=> true
3.prime? #=> true
4.prime? #=> false
```

Change arugument `prime?` to test primarity(default: `ortho`)
```ruby:
3.prime?(method="ortho")
3.prime?(method="fermat")

560.prime? #=> false
560.prime?(method="fermat") #=> true
```

### on CLI
```bash:
$ primarity 11
11 is prime
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test-unit` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/primarity.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
