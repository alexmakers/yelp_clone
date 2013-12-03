Feature: Creating restaurants

Scenario: Creating a restaurant from the new restaurants form
  Given I am on the new restaurant form
  When I fill out "Name" with "McDonalds"
  And I fill out "Description" with "Fast food"
  And I click "Create Restaurant"
  Then I should be on the restaurants index page
  And I should see "McDonalds"