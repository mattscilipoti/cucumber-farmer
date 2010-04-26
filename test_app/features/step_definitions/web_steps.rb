When /^I visit the home page$/ do
  visit '/'
end

Then /^I should see "([^\"]*)"$/ do |text|
  assert_contain text
end
