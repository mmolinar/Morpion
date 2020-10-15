class Boardgame
  attr_accessor :board_cases, :symbol
  
  def initialize(plyr1, plyr2)
    @board_cases = %w(A1 A2 A3 B1 B2 B3 C1 C2 C3)
    @symbol = symbol
    @plyr1 = plyr1
    @plyr2 = plyr2
    @player_turn = plyr1
    @board = Board.new
  end
  
  def next_turn
    if @player_turn == plyr1
      @player_turn = plyr2
    else 
      @player_turn = plyr1
    end
  end

  def choice_of_square(option)
    if @board.check_case_available(option)
      
    else
      puts "Please give a valid option" 
    end
  end
end

# Display the boardgame with new choice
# A1 = 0 A2 = 0 A3 = X
# B1 = 0 B2 = 0 B3 = 0
# C1 = 0 C2 = 0 C3 = 0

# Possibilities: A1, A2, B1, B2, B3, C1, C2, C3
# choice_of_square == C1

# Display the boardgame with new choice
# A1 = 0 A2 = 0 A3 = X
# B1 = 0 B2 = 0 B3 = 0
# C1 = O C2 = 0 C3 = 0

