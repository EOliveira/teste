require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara'
require 'dotenv'
require 'pry'

  Dotenv.load

    Capybara.default_driver = :selenium
    Capybara.javascript_driver = :webkit
    Capybara.default_max_wait_time = 40
    Capybara.default_selector = :css
    Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
end