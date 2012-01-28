Feature: user registration
  As a potential user
  I want to register for the forum
  In order to join into the forum conversations

  Scenario:
    Given I am an unregistered user
    And I am on the registration page
    When I fill in "Username" with "byron"
    And I fill in "Password" with "abc123"
    And I fill in "Password" with "abc123"
    And I click on "Register"
    Then I see "Registration succeeded"
    And I see "Welcome, Byron"
