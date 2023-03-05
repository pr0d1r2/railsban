require "test_helper"

require "webdrivers/chromedriver"
require "support/selenium_support"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  selenium_support = ::SeleniumSupport.new

  driven_by selenium_support.driver, using: selenium_support.browser, screen_size: [1400, 1400] do |driver_option|
    driver_option.args = selenium_support.base_chrome_headless_args
  end
end
