# carlos_conways_game_of_life.rb

# Tasks:
# 01. Display a Matrix of 10 x 10
# 02. Insert random elements into the Matrix (any single digit) and display it
# 03. Ask if user wants a new random matrix and display if user said yes
# 04. Generate a Matrix of max(30) rows x max(100) columns, based on user input
#     With values only being ' ' and '0'
# 05. Test is cells are alive or not (' ' is dead and '0' is alive)
# 06. Apply Rules of Conways game of life - Part 1
#   Count living cells surrounding each element in matrix
# 07. Apply Rules of Conways game of life - Part 2
#   Create new matrix with rules applied, display it and iterate it for 10 times
#   Rules:
#     Any live cell with fewer than two live neighbours dies, as if caused by under-population.
#     Any live cell with two or three live neighbours lives on to the next generation.
#     Any live cell with more than three live neighbours dies, as if by overcrowding.
#     Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.


# Extra 01. Use n iterations
# Extra 02. Fix menus and presentation
# Extra 03. Let user decide what percentage of board to fill with '0' at the beginning.
# Extra 04. Move classes to files of their own

class CellGame
  def initialize(size)
    @size = size; @archive = []
    @grid = Array.new(size) { Array.new(size) { rand(3).zero? } }
  end

  def lives_on?(row, col)
    neighborhood = (-1..1).map { |r| (-1..1).map { |c| @grid[row + r] && @grid[row + r][col + c] } }
    its_alive = neighborhood[1].delete_at(1)
    neighbors = neighborhood.flatten.count(true)
    neighbors == 3 || neighbors == 2 && its_alive
  end

  def next_gen
    (0...@size).map { |row| (0...@size).map { |col| lives_on?(row, col) } }
  end

  def play
    tick = 0; incr = 1
    loop do
      @archive.include?(@grid) ? incr = 0 : @archive << @grid
      sleep(0.5); system "clear"; @grid = next_gen
      puts "tick - #{tick += incr}"
      puts @grid.map { |row| row.map { |cell| cell ? 'X' : ' ' }.inspect }
    end
  end
end

cg = CellGame.new 10
cg.play


