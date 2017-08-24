class BbcLogin

	def initialize

		Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'
		@driver = Selenium::WebDriver.for :chrome

	end

	def get_page(page_url)

		@driver.get(page_url)

	end

	def username_input

		@driver.find_element(:id, 'username-input')

	end

	def password_input

		@driver.find_element(:id, 'password-input')

	end

	def login_error

		@driver.find_element(:css, ".form-message form-message--error form-message--username field__error") 	
	end






end