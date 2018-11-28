require_relative 'Stepping.rb'
require_relative '../Piece.rb'
class King < Piece
include SteppingPiece


  def symbol
    :K
  end
end
