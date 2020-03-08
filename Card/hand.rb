require "./deck.rb"

class Hand
  attr_accessor :deck, :total

  def initialize(deck:)
    @cards_held = []
    @received_deck =deck
    @total = 0
  end

  def add_card
    @cards_held.push(@received_deck.deck[0])
    @received_deck.deck.shift()
    
  end

  def deal
    (0..1).each do
      add_card
    end
  end

  def hit
      add_card#(@cards_held.length + 1)
      show_hand()
  end

  def check_for_bust
    if @total > 21
      puts "Bust. Oops"
    end
  end

  def calc_hand_total
    @total = 0 
    @cards_held.each_index do |i|
      @total = @total + @cards_held[i].card_value.values[0]
    end
    check_for_bust
  end

  def stand
    puts "Player stands on #{total}.\n"
  end

  def dealer_initial_show
    puts "---------------"  
    puts "#{@cards_held[0].card_value.keys[0]} of #{@cards_held[0].suit}."
    puts "---------------"
    puts "Total: #{@cards_held[0].card_value.values[0]}"
    puts "---------------"
  end

  def dealer_turn
    calc_hand_total
    until @total > 16 do
      add_card
      calc_hand_total
    end
    puts "\nDealer's hand is:"
    show_hand
  end


  def show_hand
    puts "---------------"
    @cards_held.each_index do |i|
      puts "#{@cards_held[i].card_value.keys[0]} of #{@cards_held[i].suit}."
    end
    calc_hand_total
    puts "---------------"
    puts "Total: #{@total}"
    puts "---------------"
  end

end
