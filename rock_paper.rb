options = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}
question = "What do you choose? or Type \"quit\" to exit"
number_of_games_played = 1
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
		else 
			puts "Computer wins"
		end
	end
end
	puts "End of the Game"
	

	



