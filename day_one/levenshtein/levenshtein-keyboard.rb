require 'Matrix'

class Matrix
  def []=(i, j, x)
    @rows[i][j] = x
  end
end

def levenshtein(first_word, second_word)
  if first_word == second_word
    return 0
  elsif first_word == nil
    return second_word.size
  elsif second_word == nil
    return first_word.size
  else 
    rows = first_word.size + 1
    cols = second_word.size + 1

    distances = Matrix.zero(rows, cols)
    for row in 0...rows
      distances[row, 0] = row
    end

    for col in 0...cols
      distances[0, col] = col
    end

    for row in 1...rows
      for col in 1...cols
        first_word[row - 1] == second_word[col - 1] ? cost = 0 : cost = 1
        distances[row, col] = [ distances[row - 1, col] + 1,
                                distances[row, col - 1] + 1,
                                distances[row - 1, col - 1] + cost].min
      end
    end

    return distances[first_word.size, second_word.size]
  end
end

puts "Enter first word"
first_word = gets.chomp

puts "Enter second word"
second_word = gets.chomp

puts "Levenshtein distance between #{first_word} and #{second_word} is #{levenshtein(first_word, second_word)}."