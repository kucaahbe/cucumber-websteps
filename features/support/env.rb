$LOAD_PATH.insert(0,File.dirname(__FILE__))
require 'test_app'

require 'capybara/cucumber'
require 'capybara/session'
Capybara.app = TestApp
Capybara.default_selector = :css

require 'minitest/unit'
World(MiniTest::Assertions)
