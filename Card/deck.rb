require './card.rb'

class Deck
  attr_accessor :deck

  def initialize()
    @deck = []
  end
  
  def add_card(card)
    @deck.push(card)
  end

  def build_deck
    suits =["Hearts","Spades","Clubs","Diamonds"]
    numbers = [{"Ace"=>1},{"Two"=>2},{"Three"=>3},{"Four"=>4},{"Five"=>5},{"Six"=>6},{"Seven"=>7},{"Eight"=>8},{"Nine"=>9},{"Ten"=>10},{"Jack"=>10},{"Queen"=>10},{"King"=>10}]

    suits.each do |suit|
      numbers.each do |number|
        new_card = Card.new(suit: suit, card_value: number)
        add_card(new_card)
      end
    end
  end 

  def print_cards
    @deck.each do |card|
      puts "#{card.card_value.keys[0]} of #{card.suit}. Blackjack value is #{card.card_value.values[0]},"
    end
  end

  def shuffle_cards
    @deck.shuffle!
  end
end