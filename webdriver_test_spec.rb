require 'rspec'
require 'selenium-webdriver'
require '../../src/Turbosquid/abstract_page'
require '../../src/Turbosquid/home_page'
require '../../src/Turbosquid/login_page'
require 'rspec/expectations'
include RSpec::Matchers



  describe 'Test horse number one' do

    app = nil


    before(:each) do
      app = AbstractPage.new(Selenium::WebDriver.for(:firefox))
    end

    after(:each) do
       #@@driver.quit
    end


    it 'navigates turbosquid' do
      app
          .navigate_to_app_root
          .click_horse
          .bucking_pony
    end
end