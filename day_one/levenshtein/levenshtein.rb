def levenshtein(first_word, second_word)
  if first_word == second_word
    distance = 0
  else 
    lengths = [first_word.size, second_word.size]
    if lengths.min == 0
      distance = lengths.max
    else
      distance = [levenshtein(first_word.size - 1, second_word.size) + 1,
                  levenshtein(first_word.size, second_word.size - 1) + 1,
                  levenshtein(first_word.size - 1, second_word.size - 1) + first_word.size == second_word.size ? 0 : 1]  
    end
  end
  return distance
end

puts levenshtein('cat', 'hat')