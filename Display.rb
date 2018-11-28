require_relative "cursor.rb"
require_relative "Board.rb"
require "colorize"

class Display
attr_accessor :board,:cursor

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def render
    system("clear")
    board.each_with_index do |row, i|
      row.each_with_index do |col, j|
        symbol_str = board[i][j].to_s
        if self.cursor.cursor_pos == [i, j]
          print symbol_str.blue.on_magenta
        elsif board[i][j].color == :white
          print symbol_str.white.on_blue
        elsif board[i][j].color == :black
          print symbol_str.red.on_blue
        else
          print symbol_str.green.on_blue
        end
      end
      print "\n"
    end
  end

  def roop
    while true
    self.render
    self.cursor.get_input
  end
end

end

if __FILE__ == $PROGRAM_NAME
board = Board.new
display = Display.new(board.rows)
board.move_piece([1,3],[6,3])
display.render
end
