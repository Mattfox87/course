class Card
  attr_accessor :suit, :card_value

  def initialize(suit:, card_value:)
    @suit = suit
    @card_value = card_value
  end
end



