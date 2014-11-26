# 1. Have detailed requirements or specifications in written form
# 2. Extract major nouns -> classes
# 3. Extract major verbs -> instance methods
# 4. Group instance methods into classes

require 'pry'

WINNING_RULES = { paper: 'rock', rock: 'scissors', scissors: 'paper' }


class Game


  def determine_winner(computer_choice, user_choice)
    case user_choice

    when 'P'
      if computer_choice == :paper
        puts "It's a tie. \n You picked paper and the computer picked paper."

      elsif computer_choice == :rock
        puts "You picked paper and the computer picked rock. \n Paper wraps rock. \n You won!"


      elsif computer_choice == :scissors
        puts "You picked paper and the computer picked scissors. \n Scissors cut paper. \n Computer won!"

      end

    when 'R'
      if computer_choice == :rock
        puts "It's a tie. \n You picked rock and the computer picked rock."

      elsif computer_choice == :paper
        puts "You picked rock and the computer picked paper. \n Paper wraps rock. \n Computer won!"


      elsif computer_choice == :scissors
        puts "You picked rock and the computer picked scissors. \n Rock smashes scissors \n You won!"

      end

    when 'S'
      if computer_choice == :scissors
        puts "It's a tie. \n You picked scissors and the computer picked scissors."

      elsif computer_choice == :paper
        puts "You picked scissors and the computer picked paper. \n Scissors cut paper. \n You won!"


      elsif computer_choice == :rock
        puts "You picked scissors and the computer picked rock. \n Rock smashes scissors. \n Computer won!"

      end

    end

  end

end


class GameEngine

  def prompt
    puts "Play Paper Rock Scissors!"
    puts "Choose one: (P/R/S) or Q to quit"
  end

end


class Human

  def human_play
    human_choice = gets.chomp.upcase
    if human_choice == "Q"
      exit
    end
    human_choice
  end

end



class Computer

  def computer_play
    computer_choice = WINNING_RULES.keys[rand(WINNING_RULES.length)]
  end

end


while 1 < 2
  play = GameEngine.new()
  play.prompt()
  human_turn = Human.new()
  human_choice = human_turn.human_play()
  computer_turn =	Computer.new()
  computer_choice = computer_turn.computer_play()
  game = Game.new()
  game.determine_winner(computer_choice, human_choice)

end
