require './hand.rb'
require './deck.rb'


deck = Deck.new
deck.build_deck
deck.shuffle_cards
deck.print_cards