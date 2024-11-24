class Game
  def initialize()
    @board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]
    @curr_player = 1
  end

  def play(player_one, player_two)
    self.print_header("LET'S PLAY!", 4)
    while !is_game_over?(@board)
      show_board(@board)
      puts "Player #{@curr_player}, it's your turn."
      make_a_move(if @curr_player == 1 then player_one.marker else player_two.marker end)
      update_curr_player
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

  def make_a_move(marker)
    while player_move = gets.chomp.strip
      if player_move.match(/^[0-2],[0-2]$/) && space_is_free?(player_move[0].to_i, player_move[2].to_i)
        place_marker(marker, player_move[0].to_i, player_move[2].to_i)
        break
      else
        puts "Please write a valid move in the following format: 0, 1 OR 0,1"
        puts "REMINDER: 0,0 is the top left position, and 2,2 is the bottom right."
      end
    end
  end
  
  def space_is_free?(x, y)
    if ["X","O"].include? @board[x][y] then false else true end
  end

  def place_marker(marker, x, y)
    @board[x][y] = marker
  end

  def update_curr_player
    if @curr_player == 1
      @curr_player = 2
    else 
      @curr_player = 1
    end
  end
  #attr_accessor
end