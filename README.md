# FishyUtils

A set of small simple method APIs that extend objects with a few useful features.

As a rule gems with a random feature set are a bad idea, but so are gem for a single method.  The APIs in this gem will be kept to simple single methods.  Any more complex APIs will be placed in seperate gems.
## Installation

> NOTE:  The gem has not been publish as yet, so to use it directly reference the `github.com` repository and latest tag in your `Gemfile`. For example `gem 'fishy_utils', git: 'https://github.com/drewthorp/fishy_utils.git', tag: '0.1.1'`.

Add this line to your application's Gemfile:

```ruby
gem 'fishy_utils'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install fishy_utils

## Usage

Currently this gem provbides two additional APIs on all `Object`s.

### `is_any?`

Like `is_a?` checks that the object is of a certain class, but accepts a list if classes and returns `true` if the object is any of those classes.

For example:-

```ruby
foo.is_any?(String, Array)
```

### `legal_options?`

Raises an error if the given `options` has contains key not inclused in te legals keys array.

For example :-

```ruby
def foo(**options)
  legal_options?(%i[klass name], options)
end
```

> NOTE: The intention is to extend this to also check inclusive and exclusive groups.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fishy_utils. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/fishy_utils/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FishyUtils project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/fishy_utils/blob/main/CODE_OF_CONDUCT.md).
