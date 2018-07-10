require_relative 'levenshtein'

first_word = IO.readlines("words.txt")[0].chomp
second_word = IO.readlines("words.txt")[1].chomp

puts "Levenshtein distance between #{first_word} and #{second_word} is #{levenshtein(first_word, second_word)}."