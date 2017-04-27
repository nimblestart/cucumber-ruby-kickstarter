Feature: Google Search
  Google Search allows user to perform a search

  Scenario Outline: User can perform a search on Google Search for a keyword
    Given Given that I am on Amtrak.com website
    When I check train status by city <city_combination>
    Then I should see the status information

    Examples:
    | city_combination | Scenario Description   |
    | RVR-WAS          | Today's Date         |
