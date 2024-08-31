lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'libcamera/version'

Gem::Specification.new do |spec|
  spec.name          = 'libcamera'
  spec.version       = Libcamera::VERSION
  spec.authors       = ['trex22']
  spec.email         = ['contact@jasonchalom.com']

  spec.summary       = 'A ruby gem to interface with Raspberry-pi Libcamera and other Raspberry Pi apps to help facilitate working with camera modules via Ruby. This is an unoffical project.'
  spec.description   = 'A ruby gem to interface with Raspberry-pi Libcamera and other Raspberry Pi apps to help facilitate working with camera modules via Ruby. This is an unoffical project.'
  spec.homepage      = 'https://github.com/TRex22/libcamera'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency "active_attr", "~> 0.16.0"
  spec.add_dependency "console-style", "~> 0.0.1"

  # Development dependancies
  spec.add_development_dependency "rake", "~> 13.2.1"
  spec.add_development_dependency "minitest", "~> 5.25.1"
  spec.add_development_dependency "minitest-focus", "~> 1.4.0"
  spec.add_development_dependency "minitest-reporters", "~> 1.7.1"
  spec.add_development_dependency "timecop", "~> 0.9.10"
  spec.add_development_dependency "mocha", "~> 2.4.5"
  spec.add_development_dependency "pry", "~> 0.14.2"
end
