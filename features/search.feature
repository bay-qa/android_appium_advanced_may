Feature: Tests for search functionality

  Scenario: User able to search existing conversion
    Given I land on Default conversion screen
    Then I press on Search Icon in header
    And I type "temperature" into search field
    Then I press Search icon on soft keyboard
    And I verify "Temperature" as current conversion
    And I verify Left unit picker value is "Celsius"
    And I verify Right unit picker value is "Fahrenheit"
