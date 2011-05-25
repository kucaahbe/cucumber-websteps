require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'
Bundler::GemHelper.install_tasks


task :default => :examples

Cucumber::Rake::Task.new(:examples) do |t|
  t.cucumber_opts = "--format pretty"
end
