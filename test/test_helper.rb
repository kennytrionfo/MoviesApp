ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/reporters"
# This will give you the names of the tests with a pass/fail: 
Minitest::Reporters.use! [ Minitest::Reporters::SpecReporter.new ]
# This will give you the longlines with times format: 
# Minitest::Reporters.use!
# The gem for this must be in gemfile to work. 

#This allows you to put the word "focus" before a test to have only that test tested. The gem must be in the gemfile for this to work. 
require "minitest/focus"
# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
# require "minitest/pride"

class ActiveSupport::TestCase
    ActiveRecord::Migration.check_pending!

    # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
