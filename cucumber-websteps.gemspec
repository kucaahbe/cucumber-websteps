# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cucumber-websteps/version"

Gem::Specification.new do |s|
  s.name        = "cucumber-websteps"
  s.version     = Cucumber::Websteps::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kucaahbe"]
  s.email       = ["kucaahbe@ukr.net"]
  s.homepage    = "http://github.com/kucaahbe/cucumber-websteps"
  s.summary     = %q{Common cucumber web steps for capybara that can be used in any application}
  s.description = s.summary

  s.rubyforge_project = "cucumber-websteps"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency  'capybara'
  s.add_dependency 'cucumber'

  s.add_development_dependency 'sinatra'
end
