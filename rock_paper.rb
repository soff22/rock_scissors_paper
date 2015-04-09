options = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
question = "What do you choose?"
puts question
user = gets.chomp
puts "Your choice is " + user
choices = ["rock", "scissors", "paper"]
computer = choices.sample()
if not choices.include? user
	puts "Read the game rules"
else
	puts "What does the computer choose?"
	puts computer
	if user == computer
		puts "It`s a tie"
	elsif options[user] == computer
		puts "You win"
	else 
		puts "Computer wins"
	end
end