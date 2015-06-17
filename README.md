# LinuxBlockDevice

Ruby module to interact with block devices on Linux platforms.

[![Gem Version](https://badge.fury.io/rb/linux_block_device.svg)](http://badge.fury.io/rb/linux_block_device)
[![Build Status](https://travis-ci.org/ManageIQ/linux_block_device.svg)](https://travis-ci.org/ManageIQ/linux_block_device)
[![Dependency Status](https://gemnasium.com/ManageIQ/linux_block_device.svg)](https://gemnasium.com/ManageIQ/linux_block_device)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'linux_block_device'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install linux_block_device

## Usage

LinuxBlockDevice supports `.size` to get the size of a block device via [ioctl](http://linux.die.net/man/2/ioctl) with request=BLKGETSIZE64.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ManageIQ/linux_block_device.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

