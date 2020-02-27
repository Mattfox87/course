# dice =rand 1..6
# puts "dice rolled a #{dice}"
puts "how many dice would you like to roll?"
rolls =gets.strip.to_i

dicetotal = 0 

(1..rolls).each do 
  dice =rand 1..6
  puts "dice rolled a #{dice}"
  dicetotal = dicetotal + dice
  # puts "The running total is #{dicetotal}"
end

puts "The overall total was #{dicetotal}" 