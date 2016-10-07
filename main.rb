module MathGame
end

require './questions'
require './player'

player1 = MathGame::Player.new("Player1")
player2 = MathGame::Player.new("Player2")
question = MathGame::Questions.new("1")

while player1.life > 0 || player2.life > 0 do
  puts player1.name + " " + question.askquestion
  question.getanswer
  check = question.check
  if check == true
    puts "#{player1.name} you are smart!"
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  else
    puts "#{player1.name} you are dumb!"
    player1.life -= 1
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  end
  if player1.life < 1
    puts "#{player2.name} wins with a score of #{player2.score}"
    break
  end
  puts "----- NEW TURN -----"
  puts player2.name + " " + question.askquestion
  question.getanswer
  check = question.check
  if check == true
    puts "#{player2.name} you are smart!"
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  else
    puts "#{player2.name} you are dumb!"
    player2.life -= 1
    puts "P1: #{player1.score} vs P2: #{player2.score}"
  end
  puts "----- NEW TURN -----"
  if player2.life < 1
    puts "#{player1.name} wins with a score of #{player1.score}"
    break
  end
end
puts "----- GAME OVER -----"
puts "Good bye!"
