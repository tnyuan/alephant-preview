# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alephant/preview/version'

Gem::Specification.new do |spec|
  spec.name          = "alephant-preview"
  spec.version       = Alephant::Preview::VERSION
  spec.authors       = ["Robert Kenny"]
  spec.email         = ["kenoir@gmail.com"]
  spec.summary       = "Preview component templates"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-nc"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'faraday'
  spec.add_runtime_dependency 'trollop'
  spec.add_runtime_dependency 'rake'
  spec.add_runtime_dependency 'mustache', '>= 0.99.5'

  spec.add_runtime_dependency 'alephant-renderer'
  spec.add_runtime_dependency 'alephant-support'
end
