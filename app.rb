require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/boardgame.rb'
require 'app/player.rb'
require 'app/board.rb'

  puts "Hi what's your name?"
  print ">"
  name_player_1 = gets.chomp
  puts "And what is your name?"
  print ">"
  name_player_2 = gets.chomp

  player1 = Player.new(name_player_1, "X")
  player2 = Player.new(name_player_2, "O")

 boardgame = Boardgame.new(player1, player2)

# Ask the player what choice they make?
while boardgame.ongoing_game
  puts "#{boardgame.player_turn.name} you begin, what square do you want?"
  until boardgame.choice_of_square(gets.chomp)
    puts "Choose something else"
  end
  boardgame.board.display_board
  boardgame.next_turn
end
