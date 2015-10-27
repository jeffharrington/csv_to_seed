# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csv_to_seeds/version'

Gem::Specification.new do |spec|
  spec.name          = "csv_to_seeds"
  spec.version       = CsvToSeeds::VERSION
  spec.authors       = ["Jeffrey Harrington"]
  spec.email         = ["jeff.harrington@gmail.com"]

  spec.summary       = "CSV file to Ruby seeds file"
  spec.description   = "Take a CSV file and turn it into a series of ActiveRecord creations to be used in a Seed file"
  spec.homepage      = "http://www.github.com/jeffharrington/csv_to_seeds"
  spec.licenses      = ["MIT"]

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "yard", "~> 0.8"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "simplecov", "~> 0.10"
end
