# frozen_string_literal: true

# game class
class Game
  def initialize
    @game_score = []
    @bonus_score = []
  end

  def roll(int)
    @game_score << int
    if @game_score.count == 3
      calculate_bonus
    end
    int
  end

  def current_score
    @game_score.sum + @bonus_score.sum
  end

  def calculate_bonus
    game_score = @game_score
    roll_one = game_score[0].to_i
    roll_two = game_score[1].to_i
       if roll_one + roll_two == 10
          bonus = game_score[2].to_i
          @bonus_score << bonus
       end
  end
end
