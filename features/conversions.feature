@conversions
Feature: Tests for converting values
  @wip
  Scenario: User able to convert Length
    Given I land on Default conversion screen
    And I verify Left unit picker value is "Foot"
    And I verify Right unit picker value is "Centimeter"
    When I type "1" on app keyboard
    Then I verify that source value is "1"
    And I verify that target value is "30.48"
    
  Scenario: User able to select different Units
    Given I land on Default conversion screen
    Then I press on menu icon
    And I select "Time" from menu
    Then I verify Left unit picker value is "Day"
    And I verify Right unit picker value is "Second"


  Scenario: User able to create custom conversion
    Given I land on Default conversion screen
    Then I press on menu icon
    Then I press on My Conversions
    And I press on Create Your First Conversion button
    Then I type "Power" as new conversion name
    And I press on New Unit button
    Then I type "Horse power" for new unit name
    Then I type "HP" for new unit symbol name
    And I type "1" for new unit value
    Then I press on Confirm new unit
    And I press on New Unit button
    Then I type "Mule power" for new unit name
    Then I type "MP" for new unit symbol name
    And I type "2" for new unit value
    Then I press on Confirm new unit
    When I press on OK button on new unit creation screen
    Then I verify "Power" conversion on My conversions screen


  Scenario: User able to convert Time values
    Given I land on Default conversion screen
    Then I press on menu icon
    And I select "Time" from menu
    Then I select "Decade" from left unit picker
    And I select "Day" from right unit picker
    When I type "1" on app keyboard
    And I verify that target value is "3 652.425"










