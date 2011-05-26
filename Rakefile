require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'
Bundler::GemHelper.install_tasks

task :default => ['examples:rack_test']
#task :default => ['examples:rack_test','examples:selenium']

namespace :examples do
  Cucumber::Rake::Task.new(:selenium) do |t|
    t.profile='selenium'
  end
  Cucumber::Rake::Task.new(:rack_test) do |t|
    t.profile='rack_test'
  end
end
