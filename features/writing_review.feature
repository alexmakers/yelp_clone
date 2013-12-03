Feature: Writing reviews

Scenario: Adding a review from a restaurant page
  Given I am on the page for McDonalds
  When I fill out "Review" with "This is great"
  And I fill out "Rating" with "4"
  And I click "Submit"
  Then I should see "This is great"
  And the restaurant should have 4 stars