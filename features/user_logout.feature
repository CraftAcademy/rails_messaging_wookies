Feature: User logout
  As a user
  In order to exit my account
  I want to be able to logout

  Background:
    Given I am on the landing-page
    And following user is logged in
      | name        | email                 | password |
      | Antonella   | antonella@test.com    | password |

  Scenario:
    When I click "Logout"
    Then I am logged out
    And show me the page
    And I should see "Bye, Antonella"
