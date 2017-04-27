require 'watir'
require 'cucumber'
require 'page-object'
require 'page-object/page_factory'
require 'rspec/expectations'

require_relative '../support/hooks'
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/../lib/helpers/*.rb'].each {|file| require file }

World(PageObject::PageFactory)

# Setup Browser
browser = Browser.new(ENV['BROWSER'])
browser.delete_cookies
browser.set_timeout(10)

# Load the config items
load_config_file()

# Actions performed before each scenario
Before do
  #Page Objects need the driver instance not the browser class instance
  @browser = browser.driver
end

at_exit do
  browser.driver.quit
end