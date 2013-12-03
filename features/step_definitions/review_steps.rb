Then(/^the rating for the restaurant should be ([1-5])$/) do |numerical_rating|
  expect(page).to have_css '.rating', text: numerical_rating
end

Then(/^the restaurant should have 4 stars$/) do
  expect(page).to have_content '★★★★'
end