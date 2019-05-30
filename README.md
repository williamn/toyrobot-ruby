[![Build Status](https://travis-ci.com/williamn/toyrobot-ruby.svg?branch=master)](https://travis-ci.com/williamn/toyrobot-ruby) [![codecov](https://codecov.io/gh/williamn/toyrobot-ruby/branch/master/graph/badge.svg)](https://codecov.io/gh/williamn/toyrobot-ruby)

# ToyRobot

The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.

## Installation

To use this project you'll need Ruby (tested with 2.5.3) and the gem Bundler

1. Install Brew
    - [Linux installation](https://docs.brew.sh/Homebrew-on-Linux)
    - [macOS installation](https://brew.sh/)
1. Install rbenv
1. Instal Ruby 2.5.3

        rbenv install 2.5.3


## Usage

To execute the script with a text file to pass

    bundle exec exe/toy_robot commands.txt

## Testing

To run test

    rspec spec

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/williamn/toyrobot-ruby.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
