class MathGame::Questions
  def initialize(name)
    @name = name
    @num1 = 0;
    @num2 = 0;
    @answer = 0;
  end
  def random
    1 + rand(20)
  end
  def askquestion
    @num1 = self.random
    @num2 = self.random
    "What is #{@num1} + #{@num2}?"
  end
  def getanswer
    @answer = gets.chomp
  end
  def check
    if @answer.to_i == (@num1 + @num2)
      true
    else
      false
    end
  end
end
