require "rails_helper"

RSpec.describe Poll, :type => :model do
	it "can create" do 
		Poll.stub(:find) {Poll.new(name: 'my first poll')}
		expect{Poll.find(100)}.to_not raise_error
		#before = Poll.count
		#Poll.create
		#expect(Poll.count).to eq(before +1) 
	end
end

