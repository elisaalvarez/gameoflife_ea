RSpec.describe GameoflifeEa::Cell do
  context 'When a cell is born' do
    it 'returns true' do
      cell = GameoflifeEa::Cell.new
      cell.born
      expect(cell.status).to be(true)
    end
  end
  context 'When a cell dies' do
    it 'returns false' do
      cell = GameoflifeEa::Cell.new
      cell.kill
      expect(cell.status).to be(false)
    end
  end
end
RSpec.describe GameoflifeEa::World do
  context 'When the world is created' do
    it 'returns a world full of empty cells' do
      world = GameoflifeEa::World.new
      world.world.each { |x| x.each { |cell| expect(cell.status.nil?).to be true } }
    end
  end
end
RSpec.describe GameoflifeEa::Rules do
  context 'When the cell has 0 alive neighbours' do
    it 'returns 0' do
      world = GameoflifeEa::World.new
      expect(GameoflifeEa::Rules.new.neighbours(0, 0, world)).to eq(0)
    end
  end
  context 'When the cell has 1 alive neighbours' do
    it 'returns 1' do
      world = GameoflifeEa::World.new
      world.world[19][38].born
      expect(GameoflifeEa::Rules.new.neighbours(19, 39, world)).to eq(1)
    end
  end
  context 'When the cell has 2 alive neighbours' do
    it 'returns 2' do
      world = GameoflifeEa::World.new
      world.world[0][38].born
      world.world[1][39].born
      expect(GameoflifeEa::Rules.new.neighbours(0, 39, world)).to eq(2)
    end
  end
  context 'When the cell has 3 alive neighbours' do
    it 'returns 3' do
      world = GameoflifeEa::World.new
      world.world[19][1].born
      world.world[18][0].born
      world.world[18][1].born
      expect(GameoflifeEa::Rules.new.neighbours(19, 0, world)).to eq(3)
    end
  end
  context 'When the cell has 4 alive neighbours' do
    it 'returns 4' do
      world = GameoflifeEa::World.new
      world.world[9][18].born
      world.world[9][20].born
      world.world[8][19].born
      world.world[10][19].born
      expect(GameoflifeEa::Rules.new.neighbours(9, 19, world)).to eq(4)
    end
  end
end
