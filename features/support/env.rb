require 'capybara/cucumber'

web_host = YAML.load_file "./config/#{ENV['APP']}.settings.yml"

Capybara.run_server = false
Capybara.app_host = "http://www.#{web_host[:host]}.com"
Capybara.default_selector = :css
Capybara.default_driver = :selenium
