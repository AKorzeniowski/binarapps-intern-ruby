require_relative 'levenshtein'

puts "Enter first word"
first_word = gets.chomp

puts "Enter second word"
second_word = gets.chomp

puts "Levenshtein distance between #{first_word} and #{second_word} is #{levenshtein(first_word, second_word)}."