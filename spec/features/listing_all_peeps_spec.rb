require 'spec_helper'


feature "User browses the list of peeps" do

	before(:each) {
		Peep.create(:body => "Hello Peepers!")
	} 


	scenario "When opening the web page" do
		visit '/'
		expect(page).to have_content("Hello Peepers!")
	
	end



end