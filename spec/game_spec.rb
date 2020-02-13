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
    it 'returns 0 when there is 20 rolls of 10' do
      game = Game.new
      20.times {game.roll(0)}
        expect(game.current_score).to eq(0)
    end
    it 'returns 20 when there is 20 rolls of 1' do
      game = Game.new
      20.times {game.roll(1)}
        expect(game.current_score).to eq(20)
    end
    it 'returns 80 when there is 20 rolls of 4' do
      game = Game.new
      20.times {game.roll(4)}
        expect(game.current_score).to eq(80)
    end
    it 'returns 10 when there is a spare followed by two zeros' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      2.times { game.roll(0) }
        expect(game.current_score).to eq(10)
    end
    it 'returns 11 when there is a spare followed by a zero and a 1' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(0)
      game.roll(1)
        expect(game.current_score).to eq(11)
    end
    it 'returns 12 when there is a spare followed by a 1 and a zero' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(1)
      game.roll(0)
        expect(game.current_score).to eq(12)
    end  
    it 'returns 14 when there is a spare followed by a 1,0,1,1' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(1)
      game.roll(0)
      game.roll(1)
      game.roll(1)
        expect(game.current_score).to eq(14)
    end  
    it 'returns 28 when there is a spare followed by a 1,0, then all ones' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(1)
      game.roll(0)
      16.times { game.roll(1) }
        expect(game.current_score).to eq(28)
    end
    it 'returns 28 when there is a spare followed by a 9,0, then all ones' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(9)
      game.roll(0)
      16.times { game.roll(1) }
        expect(game.current_score).to eq(44)
    end
    it 'returns 92 when there is a spare followed by a 9,0, then all fours' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(9)
      game.roll(0)
      16.times { game.roll(4) }
        expect(game.current_score).to eq(92)
    end
    it 'returns 92 when there is a spare followed by a 9,0, then all fours' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(9)
      game.roll(0)
      16.times { game.roll(4) }
        expect(game.current_score).to eq(92)
    end
    it 'returns 29 when there is a spare followed by a 9,1' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(9)
      game.roll(1)
        expect(game.current_score).to eq(29)
    end
    it 'returns 30 when player rolls 1,9,9,1,0,1' do
      game = Game.new
      game.roll(1)
      game.roll(9)
      game.roll(9)
      game.roll(1)
      game.roll(0)
      game.roll(1)
        expect(game.current_score).to eq(30)
    end
  end
end
