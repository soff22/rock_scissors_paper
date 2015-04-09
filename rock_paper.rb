options = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
question = "What do you choose?"
puts question
user = gets.chomp
puts "Your choice is " + user
choices = ["rock", "scissors", "paper", "quit"]
a = choices.shuffle
computer = a[0]
choices[3].exclude if choices[3].include? computer
if not choices.include? user
	puts "Read the game rules"
elsif choices[3].include? user
	puts "Game_end"
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