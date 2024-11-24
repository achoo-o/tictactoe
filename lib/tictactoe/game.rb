class Game
  def initialize()
    @board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]
  end

  def play(player_one, player_two)
    self.print_header("LET'S PLAY!", 4)
    while !self.is_game_over?(@board)
      self.show_board(@board)
    end
  end

  def print_header(str, padding = 2)
    line = "#" * (str.length + padding * 2)
    header = " " * padding + str +  " " * padding
    puts "\n#{line}\n#{header}\n#{line}\n"
  end

  def is_game_over?(board)
    false
  end

  def show_board(board)
    3.times do |i|
      puts " #{board[i][0]} | #{board[i][1]} | #{board[i][2]} \n"
      if i < 2 then print "-----------\n" end
    end
  end
  #attr_accessor
end