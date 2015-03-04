require 'gol'

RSpec.describe GOL do
  describe 'new game' do
    it 'should have no cells' do
      expect(GOL.new.num_cells).to be_zero
    end
  end
end
