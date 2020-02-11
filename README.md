This is a kata taken from https://kata-log.rocks/bowling-game-kata to practice TDD.

## Bowling Rules

The game consists of 10 frames. In each frame the player has two rolls to knock down 10 pins. The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares.

A spare is when the player knocks down all 10 pins in two rolls. The bonus for that frame is the number of pins knocked down by the next roll.

A strike is when the player knocks down all 10 pins on his first roll. The frame is then completed with a single roll. The bonus for that frame is the value of the next two rolls.

In the tenth frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame. However no more than three balls can be rolled in tenth frame.

## Requirements

Write a class Game that has two methods

void roll(int) is called each time the player rolls a ball. The argument is the number of pins knocked down.
int score() returns the total score for that game.

## Testing Plan

Create Game class
create void roll(int) method
create int score() method

Input Output<br>
roll(0) => 0 <br>
roll(1) => 1 <br>

roll(0) x20 <br>
score() => 0 <br>

roll(1) x20 <br>
score() => 20 <br>

roll(4) x20 <br>
score() => 80 <br>

roll(1)
roll(9)
roll(0)
roll(0)
score() => 10

roll(1)
roll(9)
roll(0)
roll(0)
score() => 10

roll(1)
roll(9)
roll(0)
roll(1)
score() => 11

roll(1)
roll(9)
roll(1)
roll(0)
score() => 12

roll(10) <br>
roll(1) x18 <br>
score() => 80 <br>
score() 30 (NB bonus score from strike is 2) <br>

roll(5) <br>
roll(5) <br>
roll(1) x18 <br>
score() 30 (NB bonus score from strike is 2) <br>

TBC with spares and strikes at other points in the game. Then concurrent strikes and spares. Then current strikes and spares leading into the final frame. Then illegal moves/edge cases.
