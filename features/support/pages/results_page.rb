class ResultsPage

require 'page-object'
# require 'page-object/page_factory'

include PageObject


  div(:first_result, :class => "rc")
# link(:your_name, :id => 'an_id')
  link(:first_result_title) {first_result_element.link_element}

  divs(:search_results, :class => "rc")



  def gather_results
    search_results_elements
    puts ""
    puts search_results_elements[0].text
    puts " "
  end


  def get_a_result
   puts "need Get a Result Code"
  end


  def verify_title
    puts "need Verify Title code"
  end
end