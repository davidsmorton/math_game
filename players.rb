class Player
  attr_accessor :name 
  attr_reader :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def change_score()
    @lives -= 1
  end
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
