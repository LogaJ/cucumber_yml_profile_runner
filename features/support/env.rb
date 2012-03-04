require 'capybara/cucumber'

web_host = YAML.load_file "./config/#{ENV['APP']}.settings.yml"

Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_driver = :selenium

if web_host.has_key?(:port)
  Capybara.app_host = "http://#{web_host[:host]}:#{web_host[:port]}"
else
  Capybara.app_host = "http://www.#{web_host[:host]}.com"
end
