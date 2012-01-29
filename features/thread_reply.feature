Feature: thread reply
    As a forum user
    I want to respond to a thread
    In order to share my point of view and experience with others

    Scenario:
        Given I am the user "byron" and I am logged in
        And there is a thread named "Funny Thread"
        And I am on the thread index page
        When I click on "Funny Thread"
        And I fill in "Reply" with "This thread is pretty dang funny."
        And I click on "Post"
        Then I see "Reply posted"
        And I see "This thread is pretty dang funny"
