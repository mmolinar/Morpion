class Boardgame
  attr_accessor :board_cases
  attr_reader :player_turn, :board
  
  def initialize(plyr1, plyr2)
    @plyr1 = plyr1
    @plyr2 = plyr2
    @player_turn = plyr1
    @board = Board.new
  end
  
  def next_turn
    if @player_turn == @plyr1
      @player_turn = @plyr2
    else 
      @player_turn = @plyr1
    end
  end

  def ongoing_game
    !@board.is_board_full
  end

  def choice_of_square(option)
    if @board.check_case_available(option)
      @board.place_symbol_on_board(@player_turn, option)
      return true
    else
      puts "Please give a valid option"
      return false
    end
  end
end
