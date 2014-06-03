# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'honobono/version'

Gem::Specification.new do |spec|
  spec.name          = "honobono"
  spec.version       = Honobono::VERSION
  spec.authors       = ["willnet"]
  spec.email         = ["netwillnet@gmail.com"]
  spec.summary       = %q{auto logger for rake}
  spec.description   = %q{auto logger for rake}
  spec.homepage      = "https://github.com/willnet/honobono"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
