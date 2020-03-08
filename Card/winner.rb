require './hand.rb'

class Winner
  def initialize(player:,dealer:)
    @player_total = player.total
    @dealer_total = dealer.total
  end

  def who_won
    if @player_total > 21
      puts "Player bust on #{@player_total}. Dealer wins on #{@dealer_total}."
      exit
      
    end
    if @dealer_total > 21 && @player_total <= 21
      puts "Dealer bust on #{@dealer_total}. Player wins on #{@player_total}."
      exit      
    end
    if @dealer_total <= 21 && @player_total <= 21
      if @dealer_total > @player_total
        puts "Dealer Wins. #{@dealer_total} v #{@player_total}."
      end
      if @dealer_total < @player_total
        puts "Player Wins. #{@player_total} v #{@dealer_total}."
      end
      if @dealer_total == @player_total
        puts "Push. #{@player_total} v #{@dealer_total}."
      end
      exit
    end
  end

end