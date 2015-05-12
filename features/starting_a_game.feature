Feature: Starting a game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    When I fill in "name" with "my name"
    And I press "Submit"
    Then I should see "Hello, you!"


  Scenario: Player doesn't enter name
    Given I am on the New Game page
    When I don't fill in "name" with "my name"
    Then I should see "Looks like you haven't entered your name!"


