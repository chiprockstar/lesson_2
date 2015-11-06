

# Programming Classes and Objects in Ruby excercises.

class MyCar
	attr_accessor :color, :year
	#attr_reader :year

	def initialize(y, c, m)
		@year = y
		@color = c
		@model = m
		@current_speed = 0
  end

	def speed_up(number)
		@current_speed += number
		"You pressed the accelerator and the speed of the car is #{current_speed}"
	end

  def brake(number)
		@current_speed -= number
		"You pushed the brake and the speed of the car is #{current_speed}"
	end

	def shut_off
		@current_speed = 0
		"The speed of the car is #{current_speed}"
	end

	def car
		"The car is a #{@model}, that is colored #{@color} and built in #{@year}."
	end

	def current_speed
		"you are now going #{@current_speed}"
	end

	def spray_paint(color)
		@color = color
	end

end

system "clear"

car = MyCar.new('1965', 'Red', 'Ford')

puts car.car
car.color = 'Green'
puts car.car
car.year = '2000'
car.spray_paint('Blue')
puts car.car

puts car.speed_up(10)
#puts car.current_speed
puts car.speed_up(100)
#puts car.current_speed
puts car.brake(70)
puts car.shut_off
