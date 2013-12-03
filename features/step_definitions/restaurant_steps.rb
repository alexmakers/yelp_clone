Given(/^I am on the new restaurant form$/) do
  visit '/restaurants/new'
end

Then(/^I should be on the restaurants index page$/) do
  expect(current_path).to eq restaurants_path
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