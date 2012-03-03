Feature: Simple searching
  As a search engine user
  I want to be able to preform a simple search
  So that I can find search results

  @google
  Scenario: Searching on Google
    When I navigate to "google.com"
    Then I should see the "google" search bar

  @yahoo
  Scenario: Searching on Yahoo
    When I navigate to "yahoo.com"
    Then I should see the "yahoo" search bar
