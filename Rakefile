require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'
Bundler::GemHelper.install_tasks

drivers = %w(rack_test selenium)
test_unit_framework = case RUBY_VERSION
                      when '1.8.7'
                        'test_unit'
                      when '1.9.2'
                        'minitest'
                      end
test_frameworks=%W(rspec #{test_unit_framework})

task :default => drivers.map { |d| test_frameworks.map { |tf| "examples:#{d}:#{tf}" } }.flatten

namespace :examples do
  drivers.each do |driver|
    namespace driver do
      test_frameworks.each do |test_framework|
        Cucumber::Rake::Task.new(test_framework,"run features using #{driver} and #{test_framework}") do |t|
          t.profile="#{driver}_#{test_framework}"
        end
      end
    end
  end
end
