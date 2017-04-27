class GoogleSearchPage
  include PageObject

  page_url $GOOGLE_BASE_URL

  text_field(:search_textbox, name: 'q')
  div(:result_stats, id:'resultStats')

  def execute_search (search_text)
    self.search_textbox = search_text
    self.search_textbox_element.send_keys :enter
  end

end
