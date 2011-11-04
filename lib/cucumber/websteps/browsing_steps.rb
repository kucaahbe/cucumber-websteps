Given /^(?:|I )am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

Then /^I should be redirected to (.+)$/ do |page|
  puts 'TODO: make this done'
  step "I should be on #{page}"
end

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  if page.respond_to? :should
    page.should have_no_content(text)
  else
    assert page.has_no_content?(text)
  end
end

Then /^(?:|I )should see \/([^\/]*)\/([imxo])?$/ do |regexp,flags|
  regexp_opts = [regexp,flags].compact
  regexp = Regexp.new(*regexp_opts)

  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end

Then /^(?:|I )should not see \/([^\/]*)\/([imxo])?$/ do |regexp,flags|
  regexp_opts = [regexp,flags].compact
  regexp = Regexp.new(*regexp_opts)

  if page.respond_to? :should
    page.should have_no_xpath('//*', :text => regexp)
  else
    assert page.has_no_xpath?('//*', :text => regexp)
  end
end

Then /^(?:|I )should be on (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path.should == path_to(page_name)
  else
    assert_equal path_to(page_name), current_path
  end
end

Then /^I should see (\d+) elements? kind of (.+)$/ do |count, locator|
  actual_count = all(selector_for(locator)).count
  count = count.to_i

  if actual_count.respond_to?(:should)
    actual_count.should eq(count)
  else
    assert_equal count, actual_count
  end
end

Then /^I should not see elements? kind of (.+)$/ do |locator|
  if defined?(RSpec)
    page.should_not have_css(selector_for(locator))
  else
    assert page.has_no_css?(selector_for(locator))
  end
end
