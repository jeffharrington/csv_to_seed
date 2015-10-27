require "bundler/gem_tasks"

desc "Reinstall gem locally"
task :reinstall do
  puts `gem build csv_to_seed.gemspec`
  puts `gem install *.gem`
  puts `rbenv rehash`
end
