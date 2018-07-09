require 'Matrix'

class Matrix
  def []=(i, j, x)
    @rows[i][j] = x
  end
end

def levenshtein(first_word, second_word)
  if first_word == second_word
    return 0
  else 
    distances = Matrix.zero(first_word.size+1, second_word.size+1)
    for row in 0...first_word.size+1
      distances[row, 0] = row
    end

    for col in 0...second_word.size+1
      distances[0, col] = col
    end

    for row in 1...first_word.size+1
      for col in 1...second_word.size+1
        cost = first_word[row-1] == second_word[col-1] ? 0 : 1
        distances[row, col] = [ distances[row - 1, col] + 1,
                              distances[row, col - 1] + 1,
                              distances[row - 1, col - 1] + cost].min
      end
    end

    return distances[first_word.size, second_word.size]
  end
end

puts levenshtein('cats', 'hat')