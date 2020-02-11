# frozen_string_literal: true

# game class
class Game

  def initialize
    @game_score = []
  end

  def roll(int)
   @game_score << int
   int
  end

  def current_score
   @game_score.sum
  end

  def current_frame
    frame = @game_score.length/2.to_f
    frame = frame.round()
  end
end