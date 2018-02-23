Feature: User logout
  As a user
  In order to exit my account
  I want to be able to logout

  Scenario:
    Given following user exist
      | name        | email                 | password |
      | Antonella   | antonella@test.com    | password |
    And I am logged in as "Antonella"
    And I am on the landing-page
    When I click on "Logout"
    And I should see message "Signed out successfully."
