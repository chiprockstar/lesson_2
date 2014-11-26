# module Beep
#
#   def beep
#     puts  "I'm beeping while backing up."
#   end
#
# end
#
#
#
# class Vehicle
#
#   attr_accessor :color
#   attr_reader :year
#   attr_reader :model
#   @@number_of_vehicles = 0
#
#   def initialize(y, c, m)
#     @year = y
#     @color = c
#     @model = m
#     @speed = 0
#     @@number_of_vehicles += 1
#   end
#
#   def age
#     "Your #{self.model} is #{calculate_age} years old"
#   end
#
#   def speed_up(s)
#     @speed += s
#     puts "You put on the gas."
#   end
#
#   def slow_down(s)
#     @speed -= s
#     puts "You put your foot on the brake."
#   end
#
#   def current_speed
#     puts "You are going #{@speed} mph."
#   end
#
#   def view_car
#     puts "Your car is colored #{@color}"
#   end
#
#   def change_color(c)
#     @color = c
#     view_car
#   end
#
#
#   def shut_off
#     @speed = 0
#     puts "The car is shutoff."
#   end
#
#   def spray_paint(c)
#     self.color = c
#     puts "Put on some new pin stripes #{c}."
#   end
#
#   def self.number_of_vehicles
#     puts "This program has created #{@@number_of_vehicles} vehicles"
#   end
#
#
#   def self.gas_mileage(gallons, miles)
#     puts "#{miles / gallons} miles per gallon of gas"
#   end
#
#   private
#
#   def calculate_age
#     t = Time.now
#     t.year - self.year.to_i
#   end
#
# end
#
#
#
#
#
#
#
# class MyCar < Vehicle
#   NUMBER_OF_DOORS = 4
#
#
#   def to_s
#     "My color is #{self.color} and is year of #{self.year} your car model #{self.model}"
#   end
#
# end
#
#
# class MyTruck < Vehicle
#   NUMBER_OF_DOORS = 2
#   include Beep
#
#   def to_s
#     "My truck is #{self.color} and is year of #{self.year} your truck model #{self.model}"
#   end
# end
#
#
#
#
#
#
# # my_car = MyCar.new("1900", "red", "Ford")
# # puts my_car
# #
# #
#   car = MyCar.new("1975", "red", "Ford")
#   car.view_car
#   car.speed_up(60)
#   car.change_color('green')
#   car.current_speed
#   car.slow_down(20)
#   car.current_speed
#   car.shut_off
#   car.current_speed
#   car.color = 'black'
#   car.spray_paint('blue')
#   puts car.color
#   puts car.year
#
#   MyCar.gas_mileage(12, 351)
#   puts car.age
#
#
#   truck = MyTruck.new("1995", "green", "Nissan Tundra")
#   truck.view_car
#   truck.speed_up(60)
#   truck.change_color('green')
#   truck.current_speed
#   truck.slow_down(20)
#   truck.current_speed
#   truck.shut_off
#   truck.current_speed
#   truck.color = 'black'
#   truck.spray_paint('purple')
#   puts truck.color
#   puts truck.year
#
#   MyTruck.gas_mileage(80, 1351)
#   truck.beep
#
#   Vehicle.number_of_vehicles
#   puts truck.age












#
# end
#
# # MyCar.gas_mileage(12, 351)
  # MyCar.gas_mileage(15, 450)
#
# my_car = MyCar.new("2010", "Nissan Leaf", "white")
#
# puts my_car






#
# class Person
#   attr_writer :name
#   def initialize(name)
#     @name = name
#   end
# end
#
# bob = Person.new("Steve")
# bob.name = "Bob"


# class Parent
#   def say_hi
#     p "Hi from Parent."
#   end
# end
#
# # p Parent.say_hi
# parent = Parent.new
# parent.say_hi







#
#
#
# class Student
#
#   attr_accessor :name
#   attr_writer :grade
#
#   def initialize(n, g)
#       @name = n
#       @grade = g
#   end
#
#   def better_grade_than?(name)
#     grade > name.grade
#   end
#
#   protected
#
#   def grade
#     @grade
#   end
# end
#
# bob = Student.new('bob', 85)
# joe = Student.new('joe', 73)
#
# puts "Well done!" if joe.better_grade_than?(bob)



class Person

  private

  def hi

  end

end

bob = Person.new
bob.hi
