# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cucumber/websteps/version"

Gem::Specification.new do |s|
  s.name        = "cucumber-websteps"
  s.version     = Cucumber::Websteps::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["kucaahbe"]
  s.email       = ["kucaahbe@ukr.net"]
  s.homepage    = "http://relishapp.com/kucaahbe/cucumber-websteps"
  s.summary     = %q{Capybara powered common cucumber web steps for any web application (blackjack and hookers included).}
  s.description = %q{Here cucumber web steps collected during BDD practice in different projects, all steps are tested to work with :rack_test and :selenium drivers. Test framework agnostic (you can use them with rspec-1, rspec-2, test/unit and minitest).}

  s.rubyforge_project = "cucumber-websteps"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'capybara'
  s.add_dependency 'cucumber', '>= 1.1.1'
  s.add_dependency 'launchy'

  s.add_development_dependency 'sinatra'
  s.add_development_dependency 'cucumber-sinatra'
  s.add_development_dependency 'rake'
end
