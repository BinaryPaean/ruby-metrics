require 'simplecov'

SimpleCov.start do
  add_filter "/spec/"
  add_filter "/binstubs/" #Ignore binstubs folder, for RVM users
  add_group "Instruments", "lib/metrics/instruments"
  merge_timeout 3600
end

$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'ruby-metrics'

RSpec.configure do |config|
  config.mock_with :rspec
end
