require './floor.rb'
require './map.rb'

class Engine

	def initialize(floor_map)
		@floor_map = floor_map
	end

	def play()
		current_floor = @floor_map.opening_floor()
		last_floor = @floor_map.next_floor('boss')

		while current_floor != last_floor
			next_floor_name = current_floor.enter()
			current_floor = @floor_map.next_floor(next_floor_name)
		end

		# printing the last floor
		current_floor.enter()
	end
end

