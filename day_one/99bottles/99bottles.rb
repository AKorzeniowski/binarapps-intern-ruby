def wordize_number(number)
  worded_numbers = { 5 => "five", 4  => "four", 3  => "three", 2  => "two", 1  => "one", 0  => "no more"}
  if worded_numbers.key?(number)
    return worded_numbers[number]
  else
    return number
  end 
end

99.downto(1) do |bottle_number|
  pluralized_item = bottle_number > 1 ? 'bottles' : 'bottle'
  puts "#{wordize_number(bottle_number)} #{pluralized_item} of beer on the wall, #{wordize_number(bottle_number)} #{pluralized_item} of beer.\nTake one down and pass it around, #{wordize_number(bottle_number-1)} #{pluralized_item} of beer on the wall.\n\n"
end

puts "No more bottles of beer on the wall, no more bottles of beer. 
Go to the store and buy some more, 99 bottles of beer on the wall."