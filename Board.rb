require 'byebug'
require_relative 'Pieces/Requirements.rb'

class Board
  attr_accessor :rows, :sentinel
  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) { Array.new(8,@sentinel) }
    fill_board
    fill_pawns
  end

  def [](pos)
    row, col = pos
    rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    rows[row][col] = val
  end

  def fill_board
  b_pieces = [Rook,Knight,Bishop,King,Queen,Bishop,Knight,Rook]
    rows[0].each_with_index do |tile,idx|
      piece = b_pieces[idx]
      rows[0][idx] = piece.new(:white,self,rows[0,idx])
    end
    rows[7].each_with_index do |tile,idx|
      piece = b_pieces[idx]
      rows[7][idx] = piece.new(:black,self,rows[7,idx])
    end
  end

  def fill_pawns
    rows[1].each_with_index do |tile,idx|
      rows[1][idx] = Pawn.new(:white,self,rows[1,idx])
    end
    rows[6].each_with_index do |tile,idx|
      rows[6][idx] = Pawn.new(:black,self,rows[6,idx])
    end
  end
  def move_piece(start_pos, end_pos)
    if start_pos.is_a?(NullPiece)
      raise "ERROR"
    elsif end_pos != NullPiece
      self[start_pos].pos = end_pos
      self[end_pos] = self.sentinel
      self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    else
      self[start_pos].pos = end_pos
      self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    end
  end




  def move_piece!(color,start_pos,end_pos)
  end

  def valid_pos?(pos)
  end

  def add_piece(piece,pos)
  end

  def checkmate?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end



end
