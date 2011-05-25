require 'uri'
require 'cgi'

features_dir = caller.first.split('/')
2.times { features_dir.pop }
support_dir = File.join(features_dir,'support')

# TODO add error handling
require File.join(support_dir,'paths.rb')
require File.join(support_dir,'selectors.rb')

require 'cucumber/browsing_steps'
require 'cucumber/form_steps'
