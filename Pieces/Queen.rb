require_relative 'Sliding.rb'
require_relative '../Piece.rb'
class Queen < Piece
  include SlidingPiece

  def symbol
   :Q
  end

end
