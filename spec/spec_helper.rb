require 'simplecov'
SimpleCov.start

ENV['CODECLIMATE_REPO_TOKEN'] = "f0098af904cc38933ce64f3beb3228dbc79d5f219224d4fa2672d334a9f8ae41"
puts ENV.inspect
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'bundler/setup'
require 'csv_to_seeds'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
