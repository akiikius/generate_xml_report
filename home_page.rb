require_relative '../../src/Turbosquid/abstract_page'
require_relative '../../src/Turbosquid/login_page'
require 'rspec/expectations'
include RSpec::Matchers



class HomePage < AbstractPage

  def initialize (driver)
    super(driver)
  end

  def click_horse
    @@driver.find_element(:css, '.es-carousel>ul>li>a>img').click
    return LoginPage.new(@@driver)
  end
end