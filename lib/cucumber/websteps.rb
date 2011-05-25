require 'uri'
require 'cgi'

features_dir = caller.first.split('/')
2.times { features_dir.pop }
support_dir = File.join(features_dir,'support')

# TODO add error handling if paths or selectors do not exist
require File.join(support_dir,'paths.rb')
require File.join(support_dir,'selectors.rb')

module WithinHelpers
  def with_scope(locator)
    locator ? within(*selector_for(locator)) { yield } : yield
  end
end
World(WithinHelpers)

require 'cucumber/browsing_steps'
require 'cucumber/form_steps'
require 'cucumber/debug_steps'
