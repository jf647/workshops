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
  end
  
end
