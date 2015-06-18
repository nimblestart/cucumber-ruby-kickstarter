class Browser

  attr_reader :driver, :browser_name

  # Initialises Browser Class
  #
  # @param [String] browserName defines the browserName
  def initialize(browser_name)
    @browser_name    = browser_name
    @driver          = start_browser(@browser_name)
  end

  # Deletes all cookies from the browser
  def delete_cookies
    @driver.manage.delete_all_cookies
    log "Deleted all the cookies"
  end

  # Sets the timeout to find elements
  #
  # @param [String] timeout value for timeout
  def set_timeout(timeout)
    @driver.manage.timeouts.implicit_wait = timeout
    log "Browser timeout set to: " + timeout.to_s
  end

  # Starts the browser
  # @param [String] browser define browser to use
  def start_browser(browser)

    # Define browser to use from config
    case browser
      when 'firefox'
        driver = Selenium::WebDriver.for :firefox
        @browser_name = 'Firefox'
      when 'chrome'
        Selenium::WebDriver::Chrome.path = 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
        driver = Selenium::WebDriver.for :chrome
        @browser_name = 'Chrome'
      when 'headless'
        # Set the path to phantomjs.exe
        Selenium::WebDriver::PhantomJS.path = 'C:\programs\phantomjs-1.9.8-windows\phantomjs.exe'
        driver = Selenium::WebDriver.for :phantomjs
        @browser_name = 'PhantomJS (Headless)'
      else
        # Default to using firefox
        driver = Selenium::WebDriver.for :firefox
        @browser_name = 'Firefox (default)'
    end

    # Return driver
    log "Driver initialized for browser: #{@browser_name}"
    return driver
  end

end
