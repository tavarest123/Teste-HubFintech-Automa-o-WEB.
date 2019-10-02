require "cucumber"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = "https://automacaocombatista.herokuapp.com/users"
end
