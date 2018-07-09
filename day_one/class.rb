class Animal
  attr_accessor :name, :age

  def initialize(new_name, new_age) 

  end

  def give_sound(sound)
    puts sound
  end
end 

animal = Animal.new('Reksio', 4)
# animal.name = 'Reksio'
# animal.age = '4'

puts animal.name
puts animal.age


animal.give__sound("szczek")
animal.give__sound("miau")