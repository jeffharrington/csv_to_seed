require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')

task default: :spec

desc "Reinstall gem locally"
task reinstall: :install do
  puts "Rehashing..."
  puts `rbenv rehash`
end
