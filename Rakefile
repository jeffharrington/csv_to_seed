require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')

# If you want to make this the default task
task :default => :spec

desc "Reinstall gem locally"
task :reinstall do
  puts `gem build csv_to_seed.gemspec`
  puts `gem install *.gem`
  puts `rbenv rehash`
end
