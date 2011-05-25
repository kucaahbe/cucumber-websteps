Capybara.configure do |config|
  config.app_host = 'http://localhost:9887'
  config.server_port = 9887
end

Before do
  Capybara.current_driver = :selenium
end

After do
  Capybara.reset_sessions!
end
