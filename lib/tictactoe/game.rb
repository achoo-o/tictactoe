class Game
  def initialize()
    @board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]
  end

  def play(player_one, player_two)
    self.print_start_msg
  end

  def print_start_msg
    puts "\n"
    puts "###############"
    puts "  LET'S PLAY!  "
    puts "###############"
    puts "\n"
  end
  #attr_accessor
end