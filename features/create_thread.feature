Feature: user creates a forum discussion thread
    As a user of the forum
    I want to post a thread
    In order to solicit replies

    Scenario: 
        Given I am the user "byron" and I am logged in
        And I am on my dashboard page
        When I click on "Create Thread"
        And I fill in "Title" with "Test title"
        And I fill in "Body" with "Test body"
        And I hit "Post"
        Then I see "Thread created"
