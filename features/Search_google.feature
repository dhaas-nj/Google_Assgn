Feature: Search Google for data

  I want search Google for whatever fancies me
  As see results of my search
  So I can then scroll through the results to view my selection

  Background:
    Given I access Google
    And I input my search criteria

 Scenario: Search Google to gather important information

   When results are returned
   Then results are displayed


Scenario: I want to see the title and summary for each search result

    When Data has been returned from my search
    And I access a returned item
    Then I am able see the title and summary