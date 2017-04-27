class GoogleSearchPage
  include PageObject

  page_url 'https://www.google.com'

  text_field(:search_textbox, name: 'q')
  button(:search_button, name:'btnK')
  div(:result_stats, id:'resultStats')

  def execute_search (search_text)
    self.search_textbox = search_text
    self.search_textbox_element.send_keys :enter
    #search_button
  end

end
