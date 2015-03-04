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
		0
	end

	def evolve!
		new_board = evolve
		@board = new_board
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
