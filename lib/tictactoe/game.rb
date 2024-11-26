class Game
  WINNING_COMBOS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], #Horizontal
    [0, 3, 6], [1, 4, 7], [2, 5, 8], #Vertical
    [0, 4, 8], [2, 4, 6] #Diagonal 
  ]    

  def initialize()
    @board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]
    @curr_player = 0
  end

  def play(players)
    self.print_header("LET'S PLAY!", 4)
    while !is_game_over?(@board)
      show_board(@board)
      puts "Player #{@curr_player + 1}, it's your turn."
      make_a_move(players[@curr_player].marker)
      update_curr_player
    end
    update_curr_player
    puts "Congratulations Player ##{@curr_player + 1}! You've won!"
  end

  def print_header(str, padding = 2)
    line = "#" * (str.length + padding * 2)
    header = " " * padding + str +  " " * padding
    puts "\n#{line}\n#{header}\n#{line}\n"
  end

  def is_game_over?(board)
    board_flat = @board.flatten
    WINNING_COMBOS.each do |coords|
      case board_flat.values_at(*coords)
      when %w(O O O)
        return true
      when %w(X X X)
        return true
      end
    end
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
      x = player_move[0].to_i
      y = player_move[2].to_i
      if player_move.match(/^[0-2],[0-2]$/) && space_is_free?(x,y)
        place_marker(marker, x, y)
        break
      else
        puts "Please enter a valid coordinate in an empty spot (e.g 0,0 or 0,1)."
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
    if @curr_player == 0
      @curr_player = 1
    else 
      @curr_player = 0
    end
  end
  #attr_accessor
end