Feature: Google Search
  Google Search allows user to perform a search

  Scenario: User can perform a search on Google Search for a keyword
    Given Given that I am on the Google Search page
    When I search for "Hello Webdriver"
    Then the tile of the results page shoud be "Hello Webdriver - Google Search"