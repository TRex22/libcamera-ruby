# Libcamera
A wrapper for interfacing with a Raspberry Pi camera and some other pi tooling
This is an unofficial project and still a work in progress (WIP) ... more to come soon.

## TODO
- [] Take Picture
- [] Take sequence
- [] Timelapse
- [] Video
- [] Camera settings
- [] DPC settings (Star Eater Algorithm)
- [] Analog and Digital gain settings
- [] Viewfinder by video
- [] Viewfinder by stills
- [] Camera stats / Overlay
- [] Store metadata
- [] RAW / DNG support
- [] Custom storage paths
- [] Filetypes
- [] Post-processing (Crop, effects etc ...)
- [] Pre-Processing (Available GPU features)
- [] Detect required tooling with errors
- [] Support Older Camera tooling
- [] Arducam autofocus support
- [] hdr support
- [] OpenCV support
- [] ImageMagick support
- [] FFmpeg Support
- [] Custom Colour correction Matrices (Including some defaults)
- [] FOM (focus box)
- [] FPS configuration
- [] Resolution settings
- [] Add more links from old picam work
- [] Any possible other sensor settings to read off (I2C etc ...)
- [] Lets do testing
- [] Arch support
- [] Battery info?
- [] Screen Brightness
- [] CLI

## Some links
- https://github.com/Gordon999/Pi_LIbCamera_GUI?tab=readme-ov-file
- https://github.com/Gordon999/RPiCamGUI
- https://github.com/raspberrypi/picamera2/issues/425
- https://forums.raspberrypi.com/viewtopic.php?t=353319
- https://www.strollswithmydog.com/pi-hq-cam-sensor-performance/

## Installation

System requirements:
You will need a Raspberry Pi and the userland utilities. Also Libcamera will need to be installed.

You will need these required permissions:
TODO: ... will investigate which permissions can be set here

Add this line to your application's Gemfile:

```ruby
gem 'libcamera'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install libcamera

## Usage

```ruby
  require 'libcamera'
  client = Libcamera::Client.new
```

### Functionality
####
-

### Constants
  Constants

## Design Philosophy
I have previously built tooling in Python to control the Raspberry Pi camera interface and sensors using the old PiCamera and a fork PiCamerax. I found being highly coupled to a specific tool-set made it difficult to upgrade to the new Libcamera framework. I've made the decision to move my project to Ruby on Rails.

The aim of this project is to create an interface for performing camera operations via Ruby. The design will be agnostic to the underlying tooling to make future expansions and upgrades easier. It will also rely mainly on the default command-line tools to ensure (I hope) the best possible performance. This also means any other tool could be incorporated into this gem as new features are added.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Tests
To run tests execute:

    $ rake test

## Building
The build the gem locally:

    $ gem build libcamera.gemspec

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/trex22/libcamera. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the libcamera: project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/trex22/libcamera/blob/master/CODE_OF_CONDUCT.md).
