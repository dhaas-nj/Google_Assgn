class ResultsPage

  require 'page-object'
# require 'page-object/page_factory'

  include PageObject


  div(:first_result, :class => "rc")
# link(:your_name, :id => 'an_id')
  link(:first_result_title) { first_result_element.link_element }

  div(:result_stat, :id => "resultStats") #this is the "About xxxxx results" into stating how many items were returned
  divs(:search_results, :class => "rc") #this captures all the info from one returned item
  h3s(:title_info, :class => "r") #this is the highlighted hyperlink title of the returned item
  divs(:summary_info, :class => "s") #this is the summary of the returned item, minus the title (see above)


  def gather_results
    store_query = Array.new
    sleep 1

    for i in 0..9
      results = {
          :title => title_info_elements[i].text,
          :summary => summary_info_elements[i].text
      }

      store_query << results

    end
    store_query

  end


end