@conversions
Feature: Tests for converting values

  Scenario: User able to convert Length
    Given I land on Default conversion screen
    And I verify Left unit picker value is "Foot"
    And I verify Right unit picker value is "Centimeter"
    When I type "99" on app keyboard
    Then I verify that source value is "1"
    And I verify that target value is "30.48"

  @wip
  Scenario: User able to select different Units
    Given I land on Default conversion screen
    Then I press on menu icon
    And I select "Time" from menu
    Then I verify Left unit picker value is "Day"
    And I verify Right unit picker value is "Second"
