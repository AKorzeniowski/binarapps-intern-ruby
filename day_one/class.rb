class Animal
  attr_accessor :name, :age

  def initialize(new_name, new_age) 

  end

  def give_sound(sound)
    puts sound
  end
end 

class Dog < Animal
  def give_sound()
    puts 'hau'
  end
end

animal = Animal.new('Reksio', 4)
# animal.name = 'Reksio'
# animal.age = '4'

puts animal.name
puts animal.age


animal.give__sound("szczek")
animal.give__sound("miau")

class Mammal
end
 
class LivesInSea
end

class Whale
  include Mammal
  include LivesInSear
end