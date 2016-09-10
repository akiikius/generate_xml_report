require_relative '../../src/Turbosquid/abstract_page'
require_relative '../../src/Turbosquid/home_page'
require 'rspec/expectations'
include RSpec::Matchers




class LoginPage < AbstractPage


  def initialize (driver)
    super(driver)
  end

  def bucking_pony
    bucking = @@driver.find_element(:css, '#Asset19>table>tbody>tr>td>a>img')
    @@driver.action.move_to(bucking).perform
    @@driver.action.context_click(bucking).send_keys(
        :arrow_down).send_keys(
        :arrow_down).send_keys(
        :enter).perform
  end
end
