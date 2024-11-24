class Game
  def initialize()
    @board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]
  end

  def play(player_one, player_two)
    self.print_header("LET'S PLAY!")
  end

  def print_header(str)
    puts "\n"
    puts "#" * (str.length + 4)
    puts "  #{str}  "
    puts "#" * (str.length + 4)
    puts "\n"
  end
  #attr_accessor
end