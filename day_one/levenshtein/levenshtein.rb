require 'Matrix'

def levenshtein(first_word, second_word)
  if first_word == second_word
    return 0
  else 
    distances = Matrix.zero(first_word.size, second_word.size)

    for row in 0...first_word.size
      distances[row, 0] = row
    end

    for col in 0...second_word.size
      distances[0, col] = col
    end

    for row in 0...first_word.size
      for col in 0...second_word.size
        distances[row, col] = [ distances[row - 1, col] + 1,
                              distances[row - 1, col] + 1,
                              distances[row - 1, col] + 1].min
      end
    end

    return distances
  end
end

puts levenshtein('cat', 'hat')