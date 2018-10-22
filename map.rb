require './floor.rb'
require './engine.rb'

class Map

	@@floors = {
		'finish' => Finish.new(),
		'entry' => Entry.new(),
		'game_over' => GameOver.new(),
		'first_floor' => FirstFloor.new(),
		'second_floor' => SecondFloor.new(),
		'boss' => Boss.new()
	}

	def initialize(start_floor)
		@start_floor = start_floor
	end

	def next_floor(floor_name)
		val = @@floors[floor_name]
		return val
	end

	def opening_floor()
		return next_floor(@start_floor)
	end
end

a_map = Map.new('entry')
a_game = Engine.new(a_map)
a_game.play()
