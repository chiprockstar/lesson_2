# 1. Have detailed requirements or specifications in written form
# 2. Extract major nouns -> classes
# 3. Extract major verbs -> instance methods
# 4. Group instance methods into classes


class Board

  def winning_arr
    @winning_arr = [[0,1,2], [3,4,5], [6,7,8], [2,4,6], [0,4,8], [0,3,6], [1,4,7], [2,5,8]]
  end

  def score_arr
    @score_arr = Array.new(9, ' ')
  end



  def paint_board(score_arr = [])

    system "clear"
    puts "     |     |"
    puts "  #{@score_arr[0]}  |  #{@score_arr[1]}  |  #{@score_arr[2]}   "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@score_arr[3]}  |  #{@score_arr[4]}  |  #{@score_arr[5]}   "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@score_arr[6]}  |  #{@score_arr[7]}  |  #{@score_arr[8]}   "
    puts "     |     |"

  end

end

class Player
  attr_accessor :player_type

  def initialize(pt)
    @player_type = pt
  end

  def take_turn(score_arr, winning_arr =[])
    if @player_type == 'player'
      puts ""
      puts "Choose a position (from 1 to 9) to place a piece:"
      choice = gets.chomp
      score_arr[choice.to_i - 1] = 'X'
    else
      block_move = false
      computer_choices = []

      winning_arr.each do |line|
        # blocking players moves
        if score_arr.values_at(*line).count('X') == 2
          block_move = true
          if score_arr[line[0]] == ' '
            score_arr[line[0]] = 'O'
            break
          elsif score_arr[line[1]] == ' '
            score_arr[line[1]] = 'O'
            break
          elsif score_arr[line[2]] == ' '
            score_arr[line[2]] = 'O'
            break
          end
          block_move = false
        end
      end

      if block_move == false
        score_arr.each_with_index do |score, idx|
          if score == ' '
            computer_choices << idx
          end
        end
        computer_choices.shuffle!
        score_arr[computer_choices[0]] = 'O' if computer_choices.length > 0
      end
    end
  end
end


class Game
  attr_accessor :board, :player, :computer

  def initialize
    @board = Board.new()
    @player = Player.new("player")
    @dealer = Player.new("dealer")
  end


  def declare_winner(score_arr, winning_arr)
    winning_arr.each do |line|
      if score_arr.values_at(*line).count('X') == 3
        return "Player Wins!"
      elsif score_arr.values_at(*line).count('O') == 3
        return "Dealer Wins!"
      else
        return "It's a Tie!" if score_arr.include?(" ") == false
      end
    end
    nil
  end


  def play
    score_arr = @board.score_arr
    winning_arr = @board.winning_arr
    @board.paint_board(score_arr)

    begin

      @player.take_turn(score_arr)
      @dealer.take_turn(score_arr, winning_arr)
      @board.paint_board(score_arr)
      winner = declare_winner(score_arr, winning_arr)

    end until winner || score_arr.include?(" ") == false
    puts winner
  end

end

Game.new.play
