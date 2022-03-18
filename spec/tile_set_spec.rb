require_relative '../lib/tile_set'

describe 'A tile set' do

  describe '::generate' do

    it 'returns an array of 9 tiles by default' do    
      expect(TileSet.generate.length()).to eq(9)
    end

    it 'returns an array of tiles of a specified length' do
      expect(TileSet.generate(10).length()).to eq(10)
    end

    it 'returns an array of tiles whose values increase from 1, by 1' do
      tile_set = TileSet.generate
      expect(tile_set[0].value).to eq(1)
      expect(tile_set[1].value).to eq(2)
      expect(tile_set[8].value).to eq(9)
    end

  end

end
