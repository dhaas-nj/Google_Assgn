Feature: Search Google for data

  I want search Google for whatever fancies me
  As see results of my search
  So I can then scroll through the results to view my selection


 Scenario: Search Google to gather important information

   Given I access Google
   When I input my search criteria
   Then results are returned


 Scenario: I want to see the title and summary for each search result

    Given Data has been returned from my search
    When I access a returned item
    Then I am able see the title and summary
