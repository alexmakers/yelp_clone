Given(/^I am on the new restaurant form$/) do
  # visit new_restaurant_path
  visit '/restaurants/new'
end

When(/^I fill out "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I click "(.*?)"$/) do |button|
  click_button button
end

Then(/^I should be on the restaurants index page$/) do
  expect(current_path).to eq restaurants_path
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I have the restaurant McDonalds$/) do
  create(:mcdonalds)
end

Given(/^I have the restaurant Burger King$/) do
  create(:bk)
end

When(/^I visit the restaurants index page$/) do
  visit restaurants_path
end

Given(/^I am on the page for McDonalds$/) do
  visit restaurant_path create(:mcdonalds)
end

Then(/^the rating for the restaurant should be ([1-5])$/) do |numerical_rating|
  expect(page).to have_css '.rating', text: numerical_rating
end

Then(/^the restaurant should have 4 stars$/) do
  expect(page).to have_content '★★★★'
end
