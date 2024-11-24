class Game
  def initialize()
    @board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]
  end

  def play(player_one, player_two)
    self.print_header("LET'S PLAY!", 4)
  end

  def print_header(str, padding = 2)
    line = "#" * (str.length + padding * 2)
    header = " " * padding + str +  " " * padding
    puts "\n#{line}\n#{header}\n#{line}\n"
  end
  #attr_accessor
end