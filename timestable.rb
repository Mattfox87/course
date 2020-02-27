def timestable(multiplier)
  if multiplier == -1
    (1..12).each do |tt|
      (1..12).each do |number|
        # puts "#{number} x #{tt} = #{number*tt}"
        xxx_timestable(tt,number)
      end
    end
  else
    (1..12).each do |number|
      # puts "#{number} x #{multiplier} = #{multiplier*number}"
      xxx_timestable(number,multiplier)
    end
  end
end

def xxx_timestable(number, multiplier)
  puts "#{number} x #{multiplier} = #{multiplier*number}"
end

puts "select timestable"

timestable_option =gets

timestable(timestable_option.strip.to_i)