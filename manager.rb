require_relative 'piece.rb'
require_relative 'pawn.rb'
require_relative 'rook.rb'
require_relative 'knight.rb'

require 'awesome_print'

knight = Knight.new("w", "a", 1)


knight.move_piece("a", 1)

knight.move_piece("b", 4)

knight.move_piece("a", 5)

knight.move_piece("b", 6)