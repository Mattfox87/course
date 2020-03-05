class Card
  attr_accessor :suit, :value

  def initialize(suit:, value:)
    @suit = suit
    @value = value
  end


end

class Deck
  attr_accessor :deck

  def initialize()
    @deck = []
  end

  def add_card(card)
    @deck.push(card)
  end

  def print_cards
    # puts @deck.to_s
    @deck.each do |card|
      puts "#{card.value} of #{card.suit},"
    end
  end

end

deck = Deck.new

suits =["hearts","spades","clubs","diamonds"]
numbers = ["A","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]

suits.each do |suit|
  numbers.each do |number|
    new_card = Card.new(suit: suit, value: number)
    deck.add_card(new_card)
  end
end

deck.print_cards