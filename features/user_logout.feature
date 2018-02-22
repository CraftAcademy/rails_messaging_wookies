Feature: User logout
  As a user
  In order to exit my account
  I want to be able to logout

  Background:
    Given I am on the account page
    And following user is logged in
      | name        | email                 | password |
      | Antonella   | antonella@test.com    | password |

  Scenario:
    Then show me the page
    When I click on "Logout"
    And I should see the page
    And I should see message "Bye, Antonella"
    Then I am logged out
