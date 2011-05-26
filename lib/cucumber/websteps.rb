require 'uri'
require 'cgi'

unless defined?(SUPPORT_DIR)
  features_dir = caller.select { |path| path =~ /features/ }.first.split('/')
  2.times { features_dir.pop }
  SUPPORT_DIR = File.join(features_dir,'support')
end

require File.join(SUPPORT_DIR,'paths.rb')
require File.join(SUPPORT_DIR,'selectors.rb')

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

require 'cucumber/websteps/step_scoper'
require 'cucumber/websteps/browsing_steps'
require 'cucumber/websteps/form_steps'
require 'cucumber/websteps/debug_steps'
