require_relative 'account'
require_relative 'bank'

=begin
puts "Hello, welcome to the Dubiel Family Bank!"
puts "Would you like to log in or sign up?"

#login

ans = gets.chomp
if ans == "log in"
	puts "Please provide your username:"
	username = gets.chomp
	puts "Please provide your pin:"
	pin = gets.chomp
elsif ans == "sign up"
	puts "What is your username?"
	user_name = user_name.chomp
	puts "What is your pin?"
	user_pin = gets.chomp
else
	puts "That choice is not available"
end
=end
@client = Account.new("goodjobbin85", "1729", 550.75)

answer = nil

while answer != "q"
	puts "Please select your action: a) deposit b) withdraw c) balance D) signup q) quit"
	answer = gets.chomp


	case answer
		when "a"
			puts "How much would you like to deposit?"
			amount = gets.chomp
			@client.deposit(amount)
		when "b"
			puts "How much would you like to withdraw?"
			amount = gets.chomp
			@client.withdraw(amount)
		when "c"
			@client.print_balance
		when "d"
		when "q"
			exit
		else
			puts "Please provide a valid option"
	end
end


