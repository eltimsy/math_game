class MathGame::Turn
  attr_accessor :name, :player, :turn
  def initialize(name)
    @name = name
    @turn = 1
    @player = 1
  end
  def playturn
    if @turn == 1
      return @player = 1
    else
      return @player = 2
    end
  end
end
