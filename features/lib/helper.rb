# Puts the passsed on String parameter to the console
def log(message)
  message_with_nl = message.gsub("\n", "\\n")
  puts message_with_nl
end

# Captures Browser screenshot as .png, takes scenario object as the parameter
def capture_screenshot(scenario)
  date_time = Time.now.strftime('%Y%m%d_%H.%M.%S_')
  Dir::mkdir('screenshots') if not File.directory?('screenshots')

  #scenario.name takes value from scenario outline examples: | reservation_number | Scenario Description |
  #first gsub is substituting space with _ in reservation_number and Scenario Description
  #second gsub is removing _ after the last word
  # gsub(/[^0-9A-Za-z_]/, '') = /[^0-9A-Za-z_]/ this regular expression will keep all the value of 0-9, A-Z and a-z but we dont want _ after these characters
  screenshot_filename = "./screenshots/FAILED_#{date_time}_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
  @browser.save_screenshot screenshot_filename
end

# Saves the Browser page source, takes scenario object as the parameter
def capture_page_source(scenario)
  date_time = Time.now.strftime('%Y%m%d_%H.%M.%S_')
  Dir::mkdir('screenshots') if not File.directory?('screenshots')
  page_source_filename = "./screenshots/FAILED_#{date_time}_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.html"
  open(page_source_filename, "wb") do |file|
    file.write(@browser.page_source)
  end
end
