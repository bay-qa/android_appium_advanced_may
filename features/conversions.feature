@conversions
Feature: Tests for converting values

  Scenario: User able to convert Length
    Given I land on Default conversion screen
    And I verify Left unit picker value is "Foot"
    And I verify Right unit picker value is "Centimeter"
    When I type "1" on app keyboard
    Then I verify that source value is "1"
    And I verify that target value is "30.48"
