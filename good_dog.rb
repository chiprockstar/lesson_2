# Solutions for exercises - # 1  What is OO programing page?


# module Run
#
# end
#
#
#
# class Horse
#
#   include Run
#
# end
#
#
# my_mare = Horse.new
# puts my_mare


# class GoodDog
#   def initialize
#     puts "This object was initialized!"
#   end
#
# end
#
# sparky = GoodDog.new


# Page 2
#
# class GoodDog
#   attr_accessor :name, :height, :weight
#
#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end
#
#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
#
#   def speak
#     "#{name} says arf!"
#   end
#
#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
#
#   def self.what_am_i
#     "I'm a GoodDog  class!"
#   end
#
# end
#
# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
# puts sparky.info
# puts sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info
# puts GoodDog.what_am_i
# # sparky = GoodDog.new("Sparky")
# # puts sparky.speak
# #
# puts sparky.name
# sparky.name = "Poochie"
# puts sparky.name

# fido = GoodDog.new("Fido")
# puts fido.speak






# class GoodDog
#
#   attr_accessor :name, :height, :weight
#
#   def initialize(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
#
#
#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
#
#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
#
#   def what_is_self
#     self
#   end
#
#
# end
#
#  sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
#  p sparky.what_is_self
# puts sparky.age
# puts





# class GoodDog
#   @@number_of_dogs = 0
#
#   def initialize
#     @@number_of_dogs += 1
#   end
#
#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
#
# end
# system "clear"
#
# puts GoodDog.total_number_of_dogs
#
# dog1 = GoodDog.new
# dog2 = GoodDog.new
#
# puts GoodDog.total_number_of_dogs

# class GoodDog
#
#   attr_accessor :name, :height, :weight
#
#   def initialize(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
#
#   def change_info(n, h, w)
#     self.name = n
#     self.height = h
#     self.weight = w
#   end
#
#
#   def info
#     "#{self.name} weighs #{self.weight} and is #{self.height} tall."
#   end
#
#   def what_is_self
#     self
#   end
#
# end
# system "clear"
#
# sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
#
# p sparky.what_is_self

# class MyCar
#   attr_accessor :color, :model, :year
#
#   def initialize(c, m, y)
#     @color = c
#     @model = m
#     @year = y
#   end
#
#
#
#   def to_s
#     "Your car is a #{model}, color #{color} and was built in #{year}."
#   end
#
# end
#
# my_car = MyCar.new('red', 'Ford', '1964')
# puts my_car

class Person
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

system "clear"
bob = Person.new("Steve")
bob.name = "Bob"
