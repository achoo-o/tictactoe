#First, just write a game in Ruby! Work in what you can, otherwise just start with spaghetti nonsense. We can clean up later.
player = "X"
opponent = "O"
board = [Array.new(3, " "), Array.new(3, " "), Array.new(3, " ")]

def ShowBoard(board)
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

ShowBoard(board)