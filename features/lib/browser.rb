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
    @driver.cookies.clear
    log "Deleted all the cookies"
  end

  # Sets the timeout to find elements
  #
  # @param [String] timeout value for timeout
  def set_timeout(timeout)
    @driver.driver.manage.timeouts.implicit_wait = timeout
    log "Browser timeout set to: " + timeout.to_s
  end

  # Starts the browser
  # @param [String] browser define browser to use
  def start_browser(browser)

    # Define browser to use from config
    case browser
      when 'firefox'
        @browser_name = 'Firefox'
        #To Do -- check how to integrate firebug and then update the code accordingly
        #profile = Selenium::WebDriver::Firefox::Profile.new
        #profile.add_extension '../path/to/firebug.xpi'
        #b = Watir::Browser.new :firefox, profile: profile
        driver = Watir::Browser.new :firefox, profile: 'default'

      when 'chrome'
        @browser_name = 'Chrome'
        # when using Chrome browser ensure the ChromeDriver is present in the PATH
        # refer https://sites.google.com/a/chromium.org/chromedriver/getting-started
        prefs = {
                  download: {
                              prompt_for_download: false, 
                              default_directory: "/path/to/dir"
                            }
        }
        #driver = Selenium::WebDriver.for :chrome, prefs: prefs #if using selenium using similar code
        driver = Watir::Browser.new :chrome, prefs: prefs
      when 'headless'
        @browser_name = 'PhantomJS (Headless)'
        # To Do update Headeless for Watir
        # Set the path to phantomjs.exe
        Selenium::WebDriver::PhantomJS.path = 'C:\programs\phantomjs-1.9.8-windows\phantomjs.exe'
        driver = Selenium::WebDriver.for :phantomjs
      else
        # Default to using firefox
        @browser_name = 'Firefox (default)'
        driver = Watir::Browser.new :firefox, profile: 'default'
    end

    # Return driver
    log "Driver initialized for browser: #{@browser_name}"
    return driver
  end

end
