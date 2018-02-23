Feature: User can send and receive messages
  As a User
  In order to contact my friends
  I should be able to send and receive messages

  Background:
    Given following user exists
      | name    | email             | password |
      | David   | david@test.com    | password |
      | Aiden   | aiden@test.com    | password |

  Scenario: Sending and receiving a message
    Given I am logged in as "Aiden"
    And I send a mail to "David"
    And I am on the "home page"
    And I click "Logout" link
    Given I am logged in as "David"
    And I am on the "home page"
    And I click "Inbox" link
    Then I am redirected to my inbox
    Then I should have "1" messages
