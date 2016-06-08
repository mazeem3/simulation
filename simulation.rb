class Game
  attr_accessor :player_one_choice, :computer

  def play()
    puts "User picks: #{player_one_choice}"
    puts "Computer picks: #{computer} "
    user_choice=player_one_choice.to_s
    computer_choice=computer.to_s
    user_score=0
    comp_score=0
    tie=0

      if (user_choice == "rock") && (computer_choice == "scissors")
        user_score+=1
        puts "You win! Rock beats Scissors"
      elsif (user_choice == "scissors") && (computer_choice == "paper")
        user_score+=1
        puts "You win! Scissors beats Paper"
      elsif (user_choice == "paper") && (computer_choice =="rock")
        user_score+=1
        puts "You win! Paper beats Rock"
      elsif (user_choice == "rock") && (computer_choice =="paper")
        comp_score+=1
        puts "You lose! Paper beats Rock"
      elsif (user_choice == "paper") && (computer_choice =="scissors")
        comp_score+=1
        puts "You lose! Scissors beats Paper"
      elsif (user_choice == "scissors") && (computer_choice =="rock")
        comp_score+=1
        puts "You lose! Rock beats Scissors"
      else
        tie += 1
        puts "Its a tie! You both picked #{player_one_choice}"
      end
      puts user_score
      puts comp_score
      puts tie
  end
end


def random_pick
    [:rock, :paper, :scissors].sample
end

game = Game.new
1000.times do
game.player_one_choice = random_pick
game.computer= random_pick
game.play()
end
