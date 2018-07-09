if 2 + 2 == 5
  puts "test string"
elsif 3 + 2 == 6
  puts "strange"
else 
  puts "last one"
end

12 > 14 ? puts('is greater') : puts('is not')

if !false 
  puts 'ok'
end

if not false 
  puts 'also ok'
end

unless false
  puts 'this will work too'
end

# loop do
#   puts '\'ello'
#   sleep 1
# end

8.times do 
  puts 'Siema'
end

for number in 1..10
  puts number
end

coll = [1, 2, 3, :test]

coll.each do |item|
  puts item
end