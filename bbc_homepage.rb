require 'selenium-webdriver'


class BbcHomepage

	attr_reader :driver

	def initialize

		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome
	
	end

	def get_page(page_url)

		@driver.get(page_url)

	end


	def sign_in_link

		@driver.find_element(:id, 'idcta-link')

	end

	# sleep(5)


	# @driver.find_element(:id, 'username-input').send_keys "kadsjfkdajfksd@asdf.com"
	# sleep(2)
	# @driver.find_element(:id, 'password-input').send_keys "password"
	# sleep(2)
	# @driver.find_element(:id, 'submit-button').click
	# sleep(5)


end


