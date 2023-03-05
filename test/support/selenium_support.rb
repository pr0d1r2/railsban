# frozen_string_literal: true

# Selenium supported driver and browser depending on desire to watch.
class SeleniumSupport
  # Per-instance state
  WATCH = (ENV['WATCH'] == '1')

  # Need to set remote-debugging-port and window-size above for full experience.
  BASE_CHROME_HEADLESS_ARGS = %w[
    disable-background-timer-throttling
    disable-backgrounding-occluded-windows
    disable-breakpad
    disable-component-extensions-with-background-pages
    disable-dev-shm-usage
    disable-extensions
    disable-ipc-flooding-protection
    disable-renderer-backgrounding
    enable-features=NetworkService,NetworkServiceInProcess
    force-color-profile=srgb
    headless
    hide-scrollbars
    metrics-recording-only
    mute-audio
    no-sandbox
  ].freeze

  # @return Symbol
  def self.driver
    new.driver
  end

  # @return Symbol
  def driver
    return :selenium_chrome if WATCH

    :selenium_chrome_headless
  end

  # @return Symbol
  def browser
    return :chrome if WATCH

    :headless_chrome
  end

  # @return Boolean
  def watch?
    WATCH
  end

  # To be used in chromedriver.rb
  #
  # @return Array(String)
  def base_chrome_headless_args
    BASE_CHROME_HEADLESS_ARGS
  end

  private_constant :WATCH
  private_constant :BASE_CHROME_HEADLESS_ARGS
end
