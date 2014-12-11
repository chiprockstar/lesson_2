# 1. Have detailed requirements or specifications in written form
# 2. Extract major nouns -> classes
# 3. Extract major verbs -> instance methods
# 4. Group instance methods into classes


class Init

  def score_arr
    score_arr = Array.new(9, ' ')
  end

  def winning_arr
    winning_arr = [[0,1,2], [3,4,5], [6,7,8], [6,4,2], [0,4,8], [0,3,6], [1,4,7], [2,5,8]]
  end

  def print_grid(score_arr = [])

    system "clear"
    puts "     |     |"
    puts "  #{score_arr[0]}  |  #{score_arr[1]}  |  #{score_arr[2]}   "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{score_arr[3]}  |  #{score_arr[4]}  |  #{score_arr[5]}   "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{score_arr[6]}  |  #{score_arr[7]}  |  #{score_arr[8]}   "
    puts "     |     |"

  end

end

class Player

  def player_take_turn(score_arr)
    puts ""
    puts "Choose a position (from 1 to 9) to place a piece:"
    choice = gets.chomp
    score_arr[choice.to_i - 1] = 'X'
  end
end

class Computer

  def computer_take_turn(score_arr, winning_lines)
    block_move = false
    computer_choices = []

    winning_lines.each do |line|
      # home grown AI to block from user becoming a winner - either lose or tie
      if score_arr.values_at(*line).count('X') == 2
        score_arr[line[0]] = 'O' if score_arr[line[0]] == ' '
        score_arr[line[1]] = 'O' if score_arr[line[1]] == ' '
        score_arr[line[2]] = 'O' if score_arr[line[2]] == ' '
        block_move = true
      end
    end

    score_arr.each_with_index do |score, idx|
      if score == ' '
        computer_choices << idx
      end
    end

    if block_move == false

      computer_choices.shuffle

      score_arr[computer_choices[0]] = 'O'
    end

  end
end


class Game
  #declare winner

  def declare_winner(score_arr, winning_lines)

    winning_lines.each do |line|
      if score_arr.values_at(*line).count('X') == 3
        return "You Win!"
      elsif score_arr.values_at(*line).count('O') == 3
        return "I Win!"
      end
    end
    nil
  end
end



setup = Init.new()
score_arr = setup.score_arr
winning_arr = setup.winning_arr
setup.print_grid(score_arr)
player = Player.new()
computer = Computer.new()


begin
  setup.print_grid(score_arr)
  player.player_take_turn(score_arr)
  computer.computer_take_turn(score_arr, winning_arr)
  setup.print_grid(score_arr)
  winner = Game.new()
  winner = winner.declare_winner(score_arr, winning_arr)

end until winner || score_arr.include?(" ") == false


if winner
  puts winner
else
  puts "It's a tie."
end
