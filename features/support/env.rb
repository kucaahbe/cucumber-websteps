ENV['RACK_ENV']='test'
$LOAD_PATH.insert(0,File.dirname(__FILE__))
require 'test_app'

require 'capybara'
require 'capybara/dsl'
World(Capybara)

Capybara.app = TestApp
Capybara.default_selector = :css

require 'minitest/unit'
World(MiniTest::Assertions)
