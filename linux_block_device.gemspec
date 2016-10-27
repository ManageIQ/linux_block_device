# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'linux_block_device/version'

Gem::Specification.new do |spec|
  spec.name          = "linux_block_device"
  spec.version       = LinuxBlockDevice::VERSION
  spec.authors       = ["Rich Oliveri", "Oleg Barenboim"]
  spec.email         = ["roliveri@redhat.com", "chessbyte@gmail.com"]

  spec.summary       = %q{Ruby module to interact with block devices on Linux platforms.}
  spec.description   = %q{Ruby module to interact with block devices on Linux platforms.}
  spec.homepage      = "http://github.com/ManageIQ/linux_block_device"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.extensions    = ["ext/linux_block_device/extconf.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec"
end
