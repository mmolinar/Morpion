require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/boardgame.rb'
require 'app/player.rb'

#  puts "Hi what's your name?"
#  print ">"
#  name_player_1 = gets.chomp
#  puts "And what is your name?"
#  print ">"
#  name_player_2 = gets.chomp

#  player1 = Player.new(name_player_1, "X")
#  player2 = Player.new(name_player_2, "O")

# boardgame = Boardgame.new(player1, player2)

# Display the boardgame before each turn

# Ask the player what choice they make?
puts "#{player1.name} you begin, what square do you want?"
# Want player1 to choose a case
# A1, A2, A3, B1, B2, B3, C1, C2, C3
choice_of_square = gets.chomp
#choice_of_square == A3

# Display the boardgame with new choice
# A1 = 0 A2 = 0 A3 = X
# B1 = 0 B2 = 0 B3 = 0
# C1 = 0 C2 = 0 C3 = 0

# Possibilities: A1, A2, B1, B2, B3, C1, C2, C3
# Player2 turn
# choice_of_square == C1

# Display the boardgame with new choice
# A1 = 0 A2 = 0 A3 = X
# B1 = 0 B2 = 0 B3 = 0
# C1 = O C2 = 0 C3 = 0

