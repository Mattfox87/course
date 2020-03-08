require './hand.rb'
require './deck.rb'
require './winner.rb'


deck = Deck.new
deck.build_deck
deck.shuffle_cards

puts "Dealer's Face Card:"
dealer_hand = Hand.new(deck: deck)
dealer_hand.deal
dealer_hand.dealer_initial_show
puts "\n"

puts "Player's Cards:"
player_hand = Hand.new(deck: deck)
player_hand.deal
player_hand.show_hand

loop do
  puts "Would you like to (H)it or (S)tand?"
  input = gets.strip

  if input == "H"
    player_hand.hit
    if player_hand.total > 21
      puts "Unlucky, dealer wins."
      break
    end
  else
    player_hand.stand  
    dealer_hand.dealer_turn 
    check_winner = Winner.new(player: player_hand, dealer: dealer_hand)
    check_winner.who_won
  end
end