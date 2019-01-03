puts "Let's play Rock, Paper, Scissors! \nGet ready with you choice!"
user_choice = gets.chomp.capitalize
while user_choice != "Stop"
computer_choice = ["Rock", "Paper", "Scissors"].sample
  if user_choice != "Rock" && user_choice != "Paper" && user_choice != "Scissors"
    puts "I did not understand your choice. Try again or type \"stop\" to end the game."
	  user_choice = gets.chomp.capitalize
  end
  if user_choice == computer_choice
	   puts "We both played #{user_choice}! \nLet's play again or type \"stop\" to end the game."
    user_choice = gets.chomp.capitalize
  elsif user_choice == "Rock" && computer_choice == "Paper" || user_choice == "Paper" && computer_choice == "Scissors" || user_choice == "Scissors" && computer_choice == "Rock"
	    puts "I played #{computer_choice}! I WIN! \n(Let's play again or type \"stop\" to end the game."
      user_choice = gets.chomp.capitalize
  elsif user_choice == "Paper" && computer_choice == "Rock" || user_choice == "Scissors" && computer_choice == "Paper" || user_choice == "Rock" && computer_choice == "Scissors"
	     puts "I played #{computer_choice}! YOU WIN! \nLet's play again or type \"stop\" to end the game."
       user_choice = gets.chomp.capitalize
  end
end
