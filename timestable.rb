def timestable(multiplier)
(1..12).each do |number|
  puts "#{number} x #{multiplier} = #{multiplier*number}"
end
end
puts "select timestable"
timestable_option =gets
timestable(timestable_option.strip.to_i)