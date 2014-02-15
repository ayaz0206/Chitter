require 'spec_helper'

describe Peep do
	
	it 'should be created and then retrieved from the db' do
		expect(Peep.count).to eq(0)
		Peep.create(:body => "Hello Peepers!")
		expect(Peep.count).to eq(1)
		peep = Peep.first
		expect(peep.body).to eq("Hello Peepers!")
		peep.destroy
		expect(Peep.count).to eq(0)
	end



end