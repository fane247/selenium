require_relative 'bbc_homepage.rb'
require_relative 'bbc_login.rb'


class BbcSite

	def initialize

		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome

	end

	def get_homepage

		BbcHomepage.new @driver

	end

	def get_login_page

		BbcLogin.new

	end


end
