Before do |scenario|
end

After do |scenario|
  if scenario.failed?
    capture_screenshot(scenario)
    
    #code to save the html to debug especially headless
    #capture_page_source(scenario)
  end
end