# GameoflifeEa

This is the gem for the Conway's Game of Life, a game with no players, where the cells can born, die or stay in the same status.
This makes different patterns on the board. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gameoflife_ea'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gameoflife_ea

## Usage

For using the game you just have to require the gem gameoflife_ea, the game starts by itself, the initial cells are born randomly, so every time the game is played, a different pattern is made.
In the display of the board, every four dots **::** represents a cell.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sp4ceunicorn/gameoflife_ea. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GameoflifeEa project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sp4ceunicorn/gameoflife_ea/blob/master/CODE_OF_CONDUCT.md).
