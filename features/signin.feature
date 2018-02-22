Feature: User can sign up
  As a application owner
  So visitors can create an account
  There should be a sign-up form on my site


  Scenario: Creates and account
    Given user visit the site
    Then user click on "Sign up" button
    And He fills in "Name" with "Fleur"
    And He fills in "Email" with "wookie@email.com"
    And He fills in "Password" with "password11"
    And He fills in "Password confirmation" with "password11"
    And He clicks "Create"
    And He sees message "Welcome! You have signed up successfully."


    # sad path

     # Scenario: User did not enter all fields
     #   Given User visits the site
     #   When User clicks on the "Sign up" button
     #   And He fills in "password" with "password1"
     #   And He fills in "password_confirmation" with "password1"
     #   And He clicks "submit"
     #   And He sees message "Unsuccessful"
     #
     # Scenario: User did not enter both password fields
     #   Given User visits the site
     #   When User clicks on the "Sign up" button
     #   And He fills in "name" with "Holger"
     #   And He fills in "password_confirmation" with "password1"
     #   And He clicks "submit"
     #   And He sees message "Unsuccessful"




      # Password is too short (minimum is 8 characters)
