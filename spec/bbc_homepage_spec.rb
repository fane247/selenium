require_relative "../bbc_homepage.rb"


describe BbcHomepage do 

	before(:all) do 

		@bbc_site = BbcSite.new
		@bbc_homepage = @bbc_site.
		@bbc_homepage.get_page("https://www.bbc.co.uk/")

	end


	it "should go to the page bbc" do

		expect(@bbc_homepage.driver.current_url).to eq "https://www.bbc.co.uk/"

	end

	it "should have a sign in button" do 

		expect(@bbc_homepage.sign_in_link.displayed?).to be true

	end

	it "should take me to the login page when clicked" do

		@bbc_homepage.sign_in_link.click
		expect(@bbc_homepage.driver.current_url).to eq "https://account.bbc.com/signin"

	end

	


end
