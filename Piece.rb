class Piece
attr_accessor :pos,:board,:color

  def initialize(color,board,pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    symbol.to_s
  end

  def empty?
  end

  def valid_moves
  end

  def symbol
    :x
  end





  private
  def move_into_check?(end_pos)
  end











end
