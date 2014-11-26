

class Animal
	def speak
		"Hello!"
	end
end


class GoodDog < Animal
	attr_accessor :name

	def initialize(n)
		self.name = n
	end

	def speak
		"#{self.name} says arf!"
		#super + " from GoodDog class"
	end

end

class Cat < Animal

end

sparky = GoodDog.new("Sparky")
paws = Cat.new
puts sparky.speak
puts paws.speak

# class Animal
#   def speak
#     "Hello!"
#   end
# end
#
# class GoodDog < Animal
#   def speak
#     super + " from GoodDog class"
#   end
# end
#
# sparky = GoodDog.new
# sparky.speak  #= "Hello! from GoodDog class"
# puts sparky.speak




#
# class Animal
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#   end
# end
#
# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end
#
# bruno = GoodDog.new("brown")
# p bruno
#
#
#
# class BadDog < Animal
# 	def initialize(age, name)
# 		super(name)
# 		@age = age
# 	end
# end
#
# BadDog.new(2, "bear")



# module Swimmable
# 	def swim
# 		"I'm swimming"
# 	end
# end
#
#
#
# class Animal; end
#
# class Fish < Animal
# 	include Swimmable
# end
#
# class Mammal < Animal
# end
#
# class Cat < Mammal
# end
#
# class Dog <Mammal
# 	include Swimmable
# end
#
#
#
# sparky = Dog.new
# neemo = Fish.new
# paws = Cat.new
#
# p sparky.swim
# p neemo.swim
# p paws.swim




#
#
# module Walkable
#   def walk
#     "I'm walking."
#   end
# end
#
# module Swimmable
#   def swim
#     "I'm swimming."
#   end
# end
#
# module Climbable
#   def climb
#     "I'm climbing."
#   end
# end
#
# class Animal
#   include Walkable
#
#   def speak
#     "I'm an animal, and I speak!"
#   end
# end
#
# # animal = Animal.new
# # p animal.walk
# # p animal.speak
# #
# #
# #
# # puts "---Animal method lookup---"
# # puts Animal.ancestors
#
#
# # fido = Animal.new
# # p fido.speak
#
# class GoodDog < Animal
# 	include Swimmable
# 	include Climbable
# end
#
# puts "---------GoodDog method lookup----------"
# puts GoodDog.ancestors





# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end
#
#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end
#
# 	def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end
#
#
# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
# buddy.speak('Arffff....')
# kitty.say_name('kitty')
#
# value = Mammal.some_out_of_place_method(4)
# p value


# class GoodDog
#
# 	DOG_YEARS = 7
#
# 	attr_accessor :name, :age
#
# 	def initialize(n, a)
# 		self.name = n
# 		self.age = a * DOG_YEARS
# 	end
#
# 	def public_disclosure
# 		"#{self.name} in human years is #{human_years}"
# 	end
#
#
# 	private
#
# 	def human_years
# 		self.age / DOG_YEARS
# 	end
#
# end
#
# sparky = GoodDog.new("Sparky", 4)
# # sparky.human_years
# p sparky.public_disclosure


# class GoodDog
# 	@@number_of_dogs = 0
#
# 	def initialize
# 		@@number_of_dogs += 1
# 	end
#
# 	def self.total_number_of_dogs
# 		@@number_of_dogs
# 	end
# end
#
#
# puts G
