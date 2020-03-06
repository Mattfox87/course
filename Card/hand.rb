require "./deck.rb"

class Hand
  attr_accessor :deck

  def initialize(deck:)
    @cards_held = []
    @received_deck =deck
  end

  def deal
    (0..1).each do |i|
      @cards_held.push(@received_deck.deck[0])
      @received_deck.deck.shift()
      puts "Dealt card is #{@cards_held[i].value.keys[0]} of #{@cards_held[i].suit}."

    end
  end

  
  def hit

  end

end
