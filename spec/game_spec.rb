# frozen_string_literal: true

require 'game'

describe 'Game' do
  describe '#void_roll(int)' do
    it 'returns 0 when input is 0' do
      game = Game.new
      expect(game.void_roll(0)).to eq(0)
    end

    it 'returns 1 when input is 1' do
      game = Game.new
      expect(game.void_roll(1)).to eq(1)
    end
  end

end
