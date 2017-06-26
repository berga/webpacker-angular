# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webpacker/angular/version"

Gem::Specification.new do |s|
  s.name          = "webpacker-angular"
  s.version       = Webpacker::Angular::VERSION
  s.authors       = ["Marco Bergantin"]
  s.email         = ["marco@bergant.in"]

  s.summary       = %q{Use Angular 2 to build client apps in Rails.}
  s.homepage      = "https://github.com/berga/webpacker-angular"
  s.license       = "MIT"

  s.required_ruby_version = ">= 1.9.3"

  s.add_dependency "webpacker", ">= 2.0"

  s.add_development_dependency "bundler", "~> 1.12"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
end
