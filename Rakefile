require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'
Bundler::GemHelper.install_tasks

profiles = %w(rack_test_test_unit selenium_test_unit)

task :default => profiles.map { |p| "examples:#{p}" }

namespace :examples do
  profiles.each do |profile|
    Cucumber::Rake::Task.new(profile) do |t|
      t.profile=profile
    end
  end
end
