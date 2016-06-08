class Game
  attr_accessor :player_one_choice, :computer

  def play()
    puts "User picks: #{player_one_choice}"
    puts "Computer picks: #{computer} "
    user_choice=player_one_choice.to_s
    computer_choice=computer.to_s


      if (user_choice == "rock") && (computer_choice == "scissors")
        puts "You win! Rock beats Scissors"
      elsif (user_choice == "scissors") && (computer_choice == "paper")
        puts "You win! Scissors beats Paper"
      elsif (user_choice == "paper") && (computer_choice =="rock")
        puts "You win! Paper beats Rock"
      elsif (user_choice == "rock") && (computer_choice =="paper")
        puts "You lose! Paper beats Rock"
      elsif (user_choice == "paper") && (computer_choice =="scissors")
        puts "You lose! Scissors beats Paper"
      elsif (user_choice == "scissors") && (computer_choice =="rock")
        puts "You lose! Rock beats Scissors"
      else
        puts "Its a tie! You both picked #{player_one_choice}"
      end
  end
end


def random_pick
    [:rock, :paper, :scissors].sample
end
100.times do
game = Game.new
game.player_one_choice = random_pick
game.computer= random_pick
game.play()
end
