Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    When I type "Sammy"
    And I click on "Submit"
    Then I should see "Welcome Sammy"

  Scenario: No name error
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    When I type ""
    And I click on "Submit"
    Then I should see "Please enter your name"

  Scenario: Starting the game
    Given I have already registered
    When I follow "Play"
    Then I should see "Lets Play!"
