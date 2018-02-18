class Account
	def initialize(name, password, balance=150.00)
		@name = name
		@password = password
		@balance = balance
	end

	def withdraw(amount)
		new_balance = @balance - amount.to_f
		if new_balance < 0
			puts "Are you sure? Withdrawing #{amount} will put you \ 
			at a negative balance!"
			response = gets.chomp
			if response == "yes"
				@balance = new_balance
				puts "You have successfully withdrawn #{amount} \ 
				and your balance is #{new_balance}."
			else
				puts "See you next time!"
				exit
			end
		else
			puts "Withdrawing #{amount} leaves you with a new balance of #{new_balance}."
		end
		new_balance
	end

	def deposit(amount)
		new_balance = @balance + amount.to_f
		@balance = new_balance
		puts "You have deposited #{amount}"
		puts "Your new balance is #{new_balance}"
		new_balance
	end

	def print_balance
		puts "your balance is #{@balance}."
		return "your balance is #{@balance}."
	end
end

