@computer_score = 0
@user_score = 0

def tie(choice)
  puts "We both played #{choice}! \nLet's play again or type \"stop\" to end the game."
end

def user_wins?(user_choice, computer_choice)
  user_choice == "Paper" && computer_choice == "Rock" ||
  user_choice == "Scissors" && computer_choice == "Paper" ||
  user_choice == "Rock" && computer_choice == "Scissors"
end

def user_won(computer_choice)
  @user_score += 1
  puts "I played #{computer_choice}! YOU WIN!"
  puts_score
end

def computer_wins?(user_choice, computer_choice)
  user_choice == "Rock" && computer_choice == "Paper" ||
  user_choice == "Paper" && computer_choice == "Scissors" ||
  user_choice == "Scissors" && computer_choice == "Rock"
end

def computer_won(user_choice, computer_choice)
  @computer_score += 1
  puts "I played #{computer_choice}! I WIN!"
  puts_score
end

def puts_score
  puts "Computer: #{@computer_score} vs. User: #{@user_score}"
  puts "(Let's play again or type \"stop\" to end the game."
end

def wrong_entry(user_choice)
  user_choice != "Rock" &&
  user_choice != "Paper" &&
  user_choice != "Scissors"
end

def run_game
  puts "Let's play Rock, Paper, Scissors! \nGet ready with you choice!"
  user_choice = gets.chomp.capitalize
    while user_choice != "Stop"
    computer_choice = ["Rock", "Paper", "Scissors"].sample
      if wrong_entry(user_choice)
        puts "I did not understand your choice. Try again or type \"stop\" to end the game."
      elsif user_choice == computer_choice
	      tie(user_choice)
      elsif user_wins?(user_choice, computer_choice)
        user_won(computer_choice)
      elsif computer_wins?(user_choice, computer_choice)
        computer_won(user_choice, computer_choice)
      end
      user_choice = gets.chomp.capitalize
    end
end

run_game
