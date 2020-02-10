# frozen_string_literal: true

require 'game'

describe 'Game' do
  
  describe '#roll(int)' do
    it 'returns 0 when input is 0' do
      game = Game.new
      expect(game.roll(0)).to eq(0)
    end

    it 'returns 1 when input is 1' do
      game = Game.new
      expect(game.roll(1)).to eq(1)
    end
  end

  describe '#current_score()' do
    it 'returns 2 when there is 2 rolls of 1' do
        game = Game.new
        game.roll(1)
        game.roll(1)
        expect(game.current_score).to eq(2)
    end    
  end

end
