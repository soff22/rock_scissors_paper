options = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
question = "What do you choose? or Type \"quit\" to exit"
for number_of_games_played in 1..5
	print "#{number_of_games_played} "
	break if number_of_games_played > 5
	puts question
	user = gets.chomp
	puts "Your choice is " + user
	choices = ["rock", "scissors", "paper"]
	computer = choices.sample
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
end
	puts "End of the Game"
	

	



