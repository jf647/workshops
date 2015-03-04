class GOL
	def initialize(size = 20)
		@board = []
		1.upto(size) do |x|
			row = []
			1.upto(size) do |y|
				row.push false
			end
			@board.push row
		end
	end

	def num_cells
		total_cell_number = 0
		@board.each do |row|
			row.each do |cell|
				total_cell_number += 1 if cell
			end
		end 
		total_cell_number
	end

	alias_method :num_alive_cells, :num_cells

	def evolve!
		new_board = evolve
		@board = new_board
	end

	def set_alive(x,y)
		@board[x][y] = true
	end

	private

	def evolve
		@board.map do |row|
			row.map do |cell|
				evolve_cell(cell)
			end
		end
	end

	def evolve_cell(cell)
		cell
	end
end
