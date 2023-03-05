# frozen_string_literal: true

require 'test_helper'

require 'support/selenium_support'
require 'webdrivers/chromedriver'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  selenium_support = ::SeleniumSupport.new

  driven_by selenium_support.driver, using: selenium_support.browser, screen_size: [1400, 1400] do |driver_option|
    driver_option.args = selenium_support.base_chrome_headless_args
  end
end
