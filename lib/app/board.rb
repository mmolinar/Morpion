class Board

  attr_accessor :cases

  def initialize
    @cases = [
      ["","",""],["","",""],["","",""]
    ]
    @case_index = { A1: [0,0], A2: [0,1], A3: [0,2], B1: [1,0], B2: [1,1], B3: [1,2], C1: [2,0], C2: [2,1], C3: [2,2] }
  end

  def display_board
    puts "|-----|-----|"
  end

  def is_board_full
    @cases.each do |row|
      row.each do |kase|
        if kase.empty?
          return false
        end
      end
    end
    return true
  end

  def check_case_available(option)
    matrix_index = @case_index[option.to_sym]
    if matrix_index
      @cases[matrix_index[0]][matrix_index[1]].empty?
    else
      puts "Please try again"
      return false
    end
  end

  def place_symbol_on_board(plyr, option)
    matrix_index = @case_index[option.to_sym]
    @cases[matrix_index[0]][matrix_index[1]] = plyr.symbol
  end
end