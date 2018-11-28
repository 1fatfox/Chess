require_relative 'Sliding.rb'
require_relative '../Piece.rb'
class Bishop < Piece
include SlidingPiece

def symbol
 :B
end

end
