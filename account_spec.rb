require_relative 'account'

describe Account do 
	before do 
		@account = Account.new("goodjobbin85", "1234", 200.00)
	end

	describe "withdraw" do 
		it "can withdraw funds" do 
			expect(@account.withdraw(50.00)).to eq(150.00)
		end
	end

	describe "print_balance error" do
		it "displays error message when withdraw is greater than balance" do 
		end
	end

	describe "deposit" do 
		it "can deposit funds" do 
			expect(@account.deposit(50.00)).to eq(250.00)
		end
	end

	describe "print_balance" do
		it "can display balance" do 
			expect(@account.print_balance).to eq("your balance is 200.0.")
		end
	end

	describe "display transactions" do
		it "can display all transactions" do 
		end
	end
end