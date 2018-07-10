99.downto(1).each do |bottle_number|
  puts "#{bottle_number} bottles of beer on the wall, #{bottle_number} bottles of beer.
  Take one down and pass it around, #{bottle_number-1} bottles of beer on the wall.\n\n"
end

puts "No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall."