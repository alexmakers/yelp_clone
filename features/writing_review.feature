Feature: Writing reviews

Background:
  Given I am on the page for McDonalds
  And no emails have been sent

Scenario: Adding a review from a restaurant page
  When I fill out "Review" with "This is great"
  And I fill out "Rating" with "4"
  And I click "Submit"
  Then I should see "This is great"
  And the restaurant should have 4 stars

Scenario: Email sent to owner when a review is written
  Given I am on the page for McDonalds
  When I fill out "Review" with "This is great"
  And I fill out "Rating" with "4"
  And I click "Submit"
  Then an email should be sent to "ronald@mcdonald.com"
  And the email should contain "New review posted"