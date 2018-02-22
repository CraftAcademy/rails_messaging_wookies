Feature: User login
  As a user
  In order to access my account
  I want to be able to login

  Background:
    Given following user exist
      | name    | email             | password |
      | Antonella   | antonella@test.com    | password |

  Scenario:
    Given I am on the landing-page
    And I click "Login"
    When I fill in "Email" with "antonella@test.com"
    And I fill in "Password" with "password"
    And I click "Log in" button
    Given I am logged in
    Then show me the page
    And I should see "Hello, Antonella"
