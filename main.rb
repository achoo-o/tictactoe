#First, just write a game in Ruby! Work in what you can, otherwise just start with spaghetti nonsense. We can clean up later.
player = "X"
opponent = "O"
board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]

module Game
  def show_board(board)
    3.times do |i|
      print " "
      print board[i][0]
      print " | "
      print board[i][1]
      print " | "
      print board[i][2]
      print "\n"
      if i < 2 then
        print "-----------"
        print "\n"
      end
    end
  end

  def play()
    while player_move = gets.chomp
      if player_move == "pussy" #check
        break
      else
        puts "Please write a valid move in the following format: 0, 1 OR 0,1"
        puts "REMINDER: 0,0 is the top left position, and 2,2 is the bottom right."
      end
    end
  end
end

include Game

Game.show_board(board)
Game.play()