Feature: user login
    As a forum user
    I want to login
    In order to make posts attributed to myself

    Scenario: correct credentials
        Given I am user "byron" with password "abc123"
        When I go to the login page
        And I fill in "Username" with "byron"
        And I fill in "Password" with "abc123"
        And I hit "Log in"
        Then I see "Logged in"

    Scenario: incorrect credentials
        Given I am user "byron" with password "abc123"
        When I go to the login page
        And I fill in "Username" with "byron"
        And I fill in "Password" with "bcd234"
        And I click on "Log in"
        Then I see "Incorrect username or password"
