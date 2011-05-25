Capybara.current_driver = :rack_test

After do
  Capybara.reset_sessions!
end
