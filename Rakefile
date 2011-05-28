require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'
Bundler::GemHelper.install_tasks

task :default => ['examples:rack_test']
#task :default => ['examples:rack_test','examples:selenium']

namespace :examples do
  %w(selenium_test_unit rack_test_test_unit).each do |profile|
    Cucumber::Rake::Task.new(profile) do |t|
      t.profile=profile
    end
  end
end
