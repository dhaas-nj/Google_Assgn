class GoogleSearchPage

  require 'page-object'

  include PageObject
  page_url('http://www.google.com')

  text_field(:input_search_field, :name => 'q')

  def initiate_search(word)
     input_search_field_element.send_keys word, :return
  end

end