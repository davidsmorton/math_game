# ### Question
# Set the frame work of the game by generating two ramdom numbers between 1-20
# Asks the players for the sum
# initialized with:
#   Gen Random numbers
#   Sum numbers
#   Question (actual math question)
#   Behaviour (Methods)
#     Gen random numbers 
#     Question (via Messages)
#     sum of random numbers (ref Answers validator)
#     answer_validator - checks actual user input vs expected 
require './user_input'
require './players'
require './game'

class Question
  attr_accessor :num1, :num2, :user_input
  
  def initialize(current_player)
    @num1 = rand 1..10
    @num2 = rand 1..10
    puts "#{current_player}, what does #{@num1} plus #{@num2} equal?"
    @user_input = UserInput.new
    # puts check_answer(@user_input.input.to_i)
  end

  def sum
    num1 + num2
  end


  def check_answer(input, current_player)
    if sum == input
      puts "#{current_player}: Yes. You are correct!"
      return true
    else 
      puts "#{current_player}: Seriously? Nope!...with extra Nope Sauce."
      return false
    end
  end   
  
end 

# question1 = Question.new()
# puts question1.sum
# puts question1.check_answer(question1.user_input.input.to_i)
