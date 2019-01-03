@computer_score = 0
@user_score = 0

def computer_selects
  @computer_choice = ["Rock", "Paper", "Scissors"].sample
end

def tie
  puts "We both played #{@computer_choice}!"
  play_again?
end

def user_wins?(user_choice)
  user_choice == "Paper" && @computer_choice == "Rock" ||
  user_choice == "Scissors" && @computer_choice == "Paper" ||
  user_choice == "Rock" && @computer_choice == "Scissors"
end

def user_won
  @user_score += 1
  puts "I played #{@computer_choice}! YOU WIN!"
  puts_score
  play_again?
end

def computer_wins?(user_choice)
  user_choice == "Rock" && @computer_choice == "Paper" ||
  user_choice == "Paper" && @computer_choice == "Scissors" ||
  user_choice == "Scissors" && @computer_choice == "Rock"
end

def computer_won
  @computer_score += 1
  puts "I played #{@computer_choice}! I WIN!"
  puts_score
  play_again?
end

def puts_score
  puts "Computer: #{@computer_score} vs. User: #{@user_score}"
end

def play_again?
  puts "(Let's play again or type \"stop\" to end the game.)"
end

def wrong_entry(user_choice)
  user_choice != "Rock" &&
  user_choice != "Paper" &&
  user_choice != "Scissors"
end

def game_over
  puts_score
  if @computer_score > @user_score
    puts "It seems like I won!\nGood match and come back again!"
  elsif @computer_score < @user_score
    puts "You defeated me!\nWell played and come back again!"
  else
    puts "It was a tie!\nWell played and come back again!"
  end
  exit
end

def run_game
  puts "Let's play Rock, Paper, Scissors! \nGet ready with your choice!"
  loop do
    user_choice = gets.chomp.capitalize
    computer_selects
    if user_choice == "Stop"
      game_over
    elsif wrong_entry(user_choice)
      puts "I did not understand your choice. Try again or type \"stop\" to end the game."
    elsif user_choice == @computer_choice
      tie
    elsif user_wins?(user_choice)
      user_won
    elsif computer_wins?(user_choice)
      computer_won
    end
  end
end

run_game
