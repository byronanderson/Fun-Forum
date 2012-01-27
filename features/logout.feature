Feature: user logout
    As a forum poster
    I want to log out of the website
    In order to stop further users of my computer from posting on the forum as me

    Scenario:
        Given I am a logged in user
        And I am on my dashboard page
        When I click "Logout"
        Then I see "Logged out successfully"
