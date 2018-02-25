Feature: Trash and Untrash a message
  As a user
  In order to have a neat inbox
  I should be able to delete messages

  Background:
    Given following user exist
      | name   | email             | password |
      | Aiden  | aiden@test.com    | password |
      | David  | david@test.com    | password |

  #@javascript
  Scenario: Deleting a message
    Given I am logged in as "Aiden"
    And I send a mail to "David"
    And I am on the "home page"
    And I click "Logout" link
    Given I am logged in as "David"
    And I am on the "home page"
    And I click "Inbox" link
    Then I should have "1" messages
    And I click "View" link
    And I click "Move to trash" link
    Then I should have "0" messages
    When I click "Trash" link
    And I click "View" link
    And I click "Untrash" link
    Then I should see "Lorem ipsum..."
