def levenshtein(first_word, second_word)
  if first_word == second_word
    distance = 0
  else 
    if [first_word.size, second_word.size].min == 0
      distance = [first_word.size, second_word.size].max
    else
      distance = 1        
  end
  return distance
end

levenshtein('cat', 'hat')