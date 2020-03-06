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
    suits =["hearts","spades","clubs","diamonds"]
    numbers = [{"Ace"=>1},{"2"=>2},{"3"=>3},{"4"=>4},{"5"=>5},{"6"=>6},{"7"=>7},{"8"=>8},{"9"=>9},{"10"=>10},{"Jack"=>10},{"Queen"=>10},{"King"=>10}]

    suits.each do |suit|
      numbers.each do |number|
        new_card = Card.new(suit: suit, value: number)
        add_card(new_card)
      end
    end
  end

  

  def print_cards
    @deck.each do |card|
      puts "#{card.value.keys[0]} of #{card.suit}. Blackjack value is #{card.value.values[0]},"
    end
  end

  def shuffle_cards
    @deck.shuffle!
  end
end