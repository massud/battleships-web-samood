Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I should see "([^"]*)"$/) do |page|
  expect(page).to have_content(page)
end

When(/^I type "([^"]*)"$/) do |name|
  fill_in('name', :with => name)
end
