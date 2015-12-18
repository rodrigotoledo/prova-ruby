RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
end

ENV = 'test'
require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
  add_filter '/lib/log'
  add_filter '/lib/database'
end

RSpec.configure do |config|
  config.mock_with :mocha
end
