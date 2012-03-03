Feature: Simple searching
  As a search engine user
  I want to be able to preform a simple search
  So that I can find search results

  @google
  Scenario: Searching on Google
    When I navigate home
    Then I should see the search bar

  @yahoo
  Scenario: Searching on Yahoo
    When I navigate home
    Then I should see the search bar
