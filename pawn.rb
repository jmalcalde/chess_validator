require 'pry'

class Pawn < Piece

	def initialize(color, position_x, position_y)
		super(color, position_x, position_y)
		@name = "Pawn" 
		@alias = "P"
		@moving_min = 1
		@movin_max = 2
		@possible_horizontal_movements = @position_x
		@possible_vertical_movements = [3, 4, 5, 6, 7, 8]
	end


	def move_piece(new_position_x, new_position_y)

		# binding.pry

		if	check_move_x(new_position_x) && check_move_y(new_position_y)

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

		check_discplacement(new_position_y) && ((new_position_y - @position_y) <= @movin_max) 
		
	end

	def check_discplacement(new_position_y)

		(@possible_vertical_movements.include? new_position_y) && @position_y < new_position_y

	end

end