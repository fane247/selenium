require_relative "../bbc_login.rb"



describe BbcLogin do 


	before(:all) do 

		@bbc_login = BbcLogin.new
		@bbc_login.get_page("https://account.bbc.com/signin")

	end



	it "should have a username input" do 

		expect(@bbc_login.username_input.displayed?).to be true

	end

	it "should have a password input" do 

		expect(@bbc_login.password_input.displayed?).to be true

	end

	context "when I enter an invalid email and password" do

		it "should display an error message" do 

			@bbc_login.username_input.send_keys "invalid@email.com"
			@bbc_login.password_input.send_keys "password"

			expect(@bbc_login.login_error.displayed?).to be true

		end 

	end



end
