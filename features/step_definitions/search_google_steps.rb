require 'page-object'
require 'page-object/page_factory'

include PageObject::PageFactory

Given(/^I access Google$/) do
  visit GoogleSearchPage
end

And(/^I input my search criteria$/) do
  on(GoogleSearchPage).initiate_search "hokie"
end



#Scenario: Search Google to gather important information

When(/^results are returned$/) do
   on(ResultsPage).result_stat_element.when_visible
end

Then(/^results are displayed$/) do
  sleep 1
  expect(on(ResultsPage).first_result_title_element.text.downcase).to include "hokie"
end



#Scenario: I want to see the title and summary for each search result

When(/^Data has been returned from my search$/) do
  on(ResultsPage).gather_results
end


And(/^I access a returned item$/) do
  on(ResultsPage).get_a_result

end


Then(/^I am able see the title and summary$/) do
  on(ResultsPage).verify_title

end


