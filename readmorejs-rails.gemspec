# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'readmorejs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "readmorejs-rails"
  spec.version       = Readmorejs::Rails::VERSION
  spec.authors       = ["seankay"]
  spec.email         = ["f.sean.kay@gmail.com"]
  spec.description   = "Readmore.js for Rails"
  spec.summary       = "Gemified Readmore.js"
  spec.homepage      = "https://github.com/seankay/readmorejs-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "railties", ">= 3.2", "< 5.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "tzinfo"
end
