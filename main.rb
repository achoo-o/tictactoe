require './lib/tictactoe_play'

player_one = Player.new
puts ("Thanks! Player #1, you've chosen #{player_one.marker_name}.")
player_two = Player.new(player_one.marker)
puts ("Player #2, you'll be #{player_two.marker_name}.")
Game.new.play([player_one, player_two])