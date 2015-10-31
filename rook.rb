require 'pry'

class Rook < Piece

	def initialize(color, position_x, position_y)

		super(color, position_x, position_y)
		@name = "Rook" 
		@alias = "R"
		@moving_min = 1
		@movin_max = 8
		@possible_horizontal_movements = ["a","b","c","d","e","f","g","h"]
		@possible_vertical_movements = [1, 2, 3, 4, 5, 6, 7, 8]
		
	end


	def move_piece(new_position_x, new_position_y)

		if	check_displacement(new_position_x, new_position_y)

			puts "#{@position_x}" + "#{@position_y}" + " " + "#{new_position_x}" + "#{new_position_y}" + " LEGAL"
			@position_x = new_position_x
			@position_y = new_position_y

		else

			puts "#{@position_x}" + "#{@position_y}" + " " + "#{new_position_x}" + "#{new_position_y}" + " ILEGAL"

		end
		
	end

	def check_move_x(new_position_x)

		@possible_horizontal_movements.include? new_position_x
		
	end

	def check_move_y(new_position_y)

		 @possible_vertical_movements.include? new_position_y
		
	end

	def check_displacement(new_position_x, new_position_y)

		if @position_x != new_position_x && @position_y == new_position_y 
			check_move_x(new_position_x)
			check_move_y(new_position_y)
		elsif @position_x == new_position_x && @position_y != new_position_y 
			check_move_x(new_position_x)
			check_move_y(new_position_y)
			else false
		end

	end

end