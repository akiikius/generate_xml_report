require 'rspec'
require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers


class AbstractPage

  @@driver = nil


  def initialize (driver)
    @@driver = driver
  end

  def navigate_to_app_root
    @@driver.navigate.to('http://www.turbosquid.com/')
    return HomePage.new(@@driver)
  end

  def quit
    @@driver.quit
  end

  def get_page_title
    return @@driver.title
  end



end
