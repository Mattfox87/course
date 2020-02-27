class Timestable_class
  def tt(selectedTT)
    (1..12).each do |number|
      puts "#{number} x #{selectedTT} = #{selectedTT*number}"
    end
  end
end



# def timestable(multiplier)
#   if multiplier == -1
#     (1..12).each do |tt|
#       (1..12).each do |number|
#         # puts "#{number} x #{tt} = #{number*tt}"
#         xxx_timestable(tt,number)
#       end
#     end
#   else
#     (1..12).each do |number|
#       # puts "#{number} x #{multiplier} = #{multiplier*number}"
#       xxx_timestable(number,multiplier)
#     end
#   end
# end

# def xxx_timestable(number, multiplier)
#   puts "#{number} x #{multiplier} = #{multiplier*number}"
# end

puts "select timestable"

timestable_option = gets.strip.to_i

timestable_obj = Timestable_class.new

timestable_obj.tt(timestable_option)


# timestable(timestable_option)