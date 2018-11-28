require_relative 'Stepping.rb'
require_relative '../Piece.rb'
class Knight < Piece
include SteppingPiece

MOVES = [
[1,2],
[1,-2],
[-1,2],
[-1,-2],
[2,1],
[2,-1],
[-2,1],
[-2,-1]
]
  def symbol
    :N
  end
end
