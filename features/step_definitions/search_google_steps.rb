require 'page-object'
require 'page-object/page_factory'

include PageObject::PageFactory

Given(/^I access Google$/) do
  visit GoogleSearchPage
end

When(/^I input my search criteria$/) do
  on(GoogleSearchPage).initiate_search "hokie"
end

Then(/^results are returned$/) do
  sleep 1
  expect(on(ResultsPage).first_result_title_element.text.downcase).to include "hokie"
  # sleep 1
  # on(ResultsPage).gather_results
end



Given(/^Data has been returned from my search$/) do
  on(ResultsPage).gather_results
end


When(/^I access a returned item$/) do
  on(ResultsPage).get_a_result
  puts "Results were obtained"
end

Then(/^I am able see the title and summary$/) do
  on(ResultsPage).verify_title
  puts "What is summary"
end




