require_relative 'Sliding.rb'
require_relative '../Piece.rb'
class Rook < Piece
include SlidingPiece
  def moves
  end

  def symbol
    :R
  end


end
