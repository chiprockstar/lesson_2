require 'rubygems'
require 'pry'


class Card
  attr_accessor :suit, :face_value

  def initialize(s, fv)
    @suit = s
    @face_value = fv
  end

  def pretty_output
    "The #{find_face_value} of #{find_suit}"
  end

  def to_s
    pretty_output
  end

  def find_suit
    case suit
      when 'H' then 'Hearts'
      when 'D' then 'Diamonds'
      when 'S' then 'Spades'
      when 'C' then 'Clubs'
    end
  end

  def find_face_value
   	case face_value
      when 'J' then 'Jack'
      when 'Q' then 'Queen'
      when 'K' then 'King'
      when 'A' then 'Ace'
		 else
		 	face_value
    end

  end
end



class Deck
  attr_accessor :cards, :deck_count

  def initialize(dc)
    @cards = []
    @deck_count = dc

    (1..deck_count).each do
      create_deck
    end
  end

  def create_deck
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        cards << Card.new(suit, face_value)
      end
    end
		shuffle_cards
  end

  def shuffle_cards
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def size
    cards.size
  end

  def card_count
    cards.count
  end


end

module Hand

  def show_hand
    puts "---- #{name}'s' Hand ----"
    cards.each do |card|
      puts "=> #{card}"
    end
    puts "=> Total: #{total}"
  end

  def total
    face_values = cards.map { |card| card.face_value }
    total = 0
    face_values.each do |val|
      if val == "A"
        total += 11
      else
        total += (val.to_i == 0 ? 10 : val.to_i)
      end
    end
    #correct for Aces
    face_values.select { |val| val == "A" }.count.times do
      break if total <= 21
      total -= 10
    end
    total
  end

  def add_card(new_card)
    cards << new_card
  end

  def is_busted?
    total > 21
  end

end


class Player
  include Hand
  attr_accessor :name, :cards

  def initialize(n)
    @name = n
    @cards = []
  end

	def show_flop
		show_hand
	end

end



class Dealer
  include Hand
  attr_accessor :name, :cards

  def initialize
    @name = "Dealer"
    @cards = []
  end

	def show_flop
		puts "---- Dealer's Hand ----"
		puts "=> First card is hidden"
		puts "=> Second card is #{cards[1]}"
	end

end


class Game
  attr_accessor :deck, :player, :dealer, :deck_count

  def initialize
		@player = Player.new("YourName")
		@dealer = Dealer.new
		@deck = Deck.new(1)
  end

	def start
		set_player_name
		set_how_many_decks
		deal_cards
		show_flop
		players_turn
		dealers_turn
		exit
	end

  def clear_screen
    system "clear"
  end

	def set_player_name
		clear_screen
		puts "Enter your name."
		player.name = gets.chomp
	end

	def show_flop
		player.show_flop
		dealer.show_flop
	end

	def set_how_many_decks
		puts "Enter how many decks you would like to use? 1, 2, 3 or more."
		deck.deck_count = gets.chomp.to_i
	end

  def deal_cards
    player.add_card(deck.deal_one)
    dealer.add_card(deck.deal_one)
    player.add_card(deck.deal_one)
    dealer.add_card(deck.deal_one)
  end

	def show_flop
		player.show_flop
		dealer.show_flop
	end

  def players_turn
    begin
      clear_screen
      player.show_hand
      dealer.show_flop

      if player.total == 21
        puts "You win!"
        exit
      end

      if player.is_busted?
        puts "You're Busted, dealer wins!"
        exit
      end

      puts "Hit? y / n"

      choice = gets.chomp.downcase
      if choice == 'y'
        player.add_card(deck.deal_one)
      else
        break
      end
    end	until 1 != 1
  end

  def dealers_turn
    begin
      clear_screen
      player.show_hand
      dealer.show_hand

      if dealer.is_busted?
        puts "Dealer Busted, you win!"
        exit
      end

      if dealer.total >= player.total #&& dealer.total >= 17 && dealer.total <= 21
        puts "Dealer wins!"
        exit
      end

      dealer.add_card(deck.deal_one)
    end	until 1 != 1
  end
end

game = Game.new
game.start
