def timestable(multiplier)
  if multiplier == -1
    (1..12).each do |tt|
      (1..12).each do |number|
        puts "#{number} x #{tt} = #{number*tt}"
      end
    end
  else
    (1..12).each do |number|
      puts "#{number} x #{multiplier} = #{multiplier*number}"
    end
  end
end

puts "select timestable"

timestable_option =gets

timestable(timestable_option.strip.to_i)