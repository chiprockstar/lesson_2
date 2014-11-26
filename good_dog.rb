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






class GoodDog

  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end


  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end


end

 sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
 p sparky.what_is_self
# puts sparky.age
# puts
