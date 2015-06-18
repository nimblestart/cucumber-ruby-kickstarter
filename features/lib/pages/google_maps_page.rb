class GoogleMapsPage
  include PageObject

  page_url 'https://www.google.com/maps'

  text_field(:search_text, name: 'q')
  button(:search_button, classname:'searchbutton')

  def search_maps (location_name)
    self.search_text = location_name
    search_button
  end

end
