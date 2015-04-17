options = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
question = "What do you choose? or Type \"quit\" to exit"
number_of_games_played = 1
user_wins = 0
computer_wins = 0
while number_of_games_played <= 6 do
	print "#{number_of_games_played} "
	break if number_of_games_played > 5
	puts question
	user = gets.chomp
	puts "Your choice is " + user
	choices = ["rock", "scissors", "paper"]
	computer = choices.sample
	break if user == "quit"
	if not choices.include? user
		puts "Read the game rules"
	else
		number_of_games_played += 1 
		puts "What does the computer choose?"
		puts computer
		if user == computer
			puts "It`s a tie"
		elsif options[user] == computer
			puts "You win"
			user_wins += 1
		else 
			puts "Computer wins"
			computer_wins += 1
		end
	end
end
	puts "End of the Game"
	puts "User result is #{user_wins}"
	puts "Computer result is #{computer_wins}"
	if user_wins > computer_wins
		puts "User wins the Game"
	elsif user_wins < computer_wins
		puts "Computer wins the Game"
	else 
		puts "The result is equal"
	end
	

	



