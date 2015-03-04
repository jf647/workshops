require 'gol'

RSpec.describe GOL do
  describe 'new game' do
    it 'should have no cells' do
      expect(GOL.new.num_cells).to be_zero
    end
  end

  describe 'evolve' do
  	it 'should have no cells after one evolution' do
  		game = GOL.new
  		game.evolve!
  		expect(game.num_cells).to be_zero
  	end

    it 'a single cell dies after one evolution' do
      game = GOL.new
      game.set_alive(0, 0)
      game.evolve!
      expect(game.num_alive_cells).to be_zero
    end
  end
  
end
