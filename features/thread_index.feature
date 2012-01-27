Feature: index listing all threads
    As a visitor to the forum
    I want to see what topics people are talking about
    In order to quickly see topics that interest me
    Scenario:
        Given I am the user "byron" and I am logged in
        And there are threads like this:
          | title       | body         |
          | Howdy       | hi           |
          | Brains      | I crave them |
          | Vidya Games | Wanna play?  |
        When I go to the thread index page
        Then I see all the thread titles
