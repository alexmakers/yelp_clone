When(/^I fill out "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I click "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end