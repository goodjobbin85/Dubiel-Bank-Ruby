require_relative 'member'

describe Member do

	before do 
		@member = Member.new
		@balance = 150.00
	end

	it "can withdraw funds" do 
		expect(@member.withraw(50.00)).to eq(balance - 50.00)
	end

	it "can deposit funds" do 
		expect(@member.deposit(50.00).to eq(balance + 50))
	end

	it "can display transactions" do 

	end

	it "can transfer funds" do 

	end
end