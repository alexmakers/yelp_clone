Feature: Listing restaurants

Scenario: The restaurants index page lists all restaurants
  Given I have the restaurant McDonalds
  And I have the restaurant Burger King
  When I visit the restaurants index page
  Then I should see "McDonalds"
  And I should see "Burger King"