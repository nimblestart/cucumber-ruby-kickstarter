#require 'selenium-webdriver'
require 'watir'
require 'cucumber'
require 'page-object'
require 'page-object/page_factory'
require 'rspec/expectations'

require_relative '../support/hooks'
require_relative '../lib/helper'
require_relative '../lib/browser'

World(PageObject::PageFactory)

# Setup Browser
browser = Browser.new(ENV['BROWSER'])
browser.delete_cookies
browser.set_timeout(10)

# Load the config items
project_root = File.expand_path('../..', __FILE__)
$BASE_URL = YAML.load_file(project_root + "/config/config.yml")[ENV['TEST_ENV']][:url]

# Actions performed before each scenario
Before do
  #Page Objects need the driver instance not the browser class instance
  @browser = browser.driver
end

at_exit do
  browser.driver.quit
end