module MathGame
end

require './questions'
require './player'

player1 = MathGame::Player.new("Player1")
player2 = MathGame::Player.new("Player2")
question = MathGame::Questions.new("1")

play = 1
def playturn(play)
  if play == 1
    return player = 1
  else
    return player = 2
  end
end

while player1.life > 0 || player2.life > 0 do
  player = playturn(play)
  puts "player#{player} " + question.askquestion
  question.getanswer
  check = question.check
  if check == true
    puts "player#{player} you are smart!"
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  else
    puts "player#{player} you are dumb!"
    if player == 1
      player1.life -= 1
    else
      player2.life -= 1
    end
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  end
  if player1.life < 1
    puts "#{player2.name} wins with a score of #{player2.score}"
    break
  elsif player2.life < 1
    puts "#{player1.name} wins with a score of #{player1.score}"
    break
  end
  puts "----- NEW TURN -----"
  if play == 1
    play += 1
  else
    play -= 1
  end
end
puts "----- GAME OVER -----"
puts "Good bye!"
