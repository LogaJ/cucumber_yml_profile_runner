Feature: Using web interface to run profiles
  As a user
  I want to be able to run features from an interface
  So that I don't have to remember commands

  @localhost
  Scenario: Selecting a profile from a list
    When I run features with the "google" profile
    Then I should see the test results
    
