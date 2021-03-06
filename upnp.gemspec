# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "upnp/version"

Gem::Specification.new do |s|
  s.name        = "upnp-nickewing"
  s.version     = UPnP::VERSION
  s.author      = "turboladen"
  s.email       = "steve.loveless@gmail.com"
  s.homepage    = "http://github.com/turboladen/upnp"
  s.summary     = "Use me to build a UPnP app!"
  s.description = %q{upnp provides the tools you need to build an app that runs
in a UPnP environment.  This is a pre-release gem
and is subject to substantial change.}

  s.rubyforge_project = "upnp"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.extra_rdoc_files = %w(History.rdoc README.rdoc)
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">=1.9.1")

  s.add_dependency 'eventmachine', '>=1.0.0'
  s.add_dependency 'em-http-request', '>=1.0.2'
  s.add_dependency 'em-synchrony'
  s.add_dependency 'nori', '>=2.0.2'
  s.add_dependency 'log_switch', '>=0.4.0'
  s.add_dependency 'savon', '~>2.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'cucumber', '>=1.0.0'
  s.add_development_dependency 'em-websocket', '>=0.3.6'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '>=2.6'
  s.add_development_dependency 'simplecov', '>=0.4.2'
  s.add_development_dependency 'tailor', ">=1.1.4"
  s.add_development_dependency 'thin'
  s.add_development_dependency 'thor', ">=0.1.6"
  s.add_development_dependency 'yard', '>=0.7.0'
  s.add_development_dependency 'pry'
end
