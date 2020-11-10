# ### Game
# initialized with: 
#   Players 
#   Score 
#   Answers
#   Messages
#   Questions

# Behaviour
# 1. Who's turn is it(player1 or player2) (whos_turn) - conditional based on inital value of "player1"
# 2. What question to ask(randomly generated question from Questions) 
# 3. Check answer with Answers - compare input to executed answer (actual vs. expected) 
# 4. Display message if correct or Display message if incorrect 
# 5. update score and display 

# write conditional if user response is not nil then set current user to other user (i.e. Player1's answer is 5 then set current user to Player2)
# 6. start new turn with the other player (loop back to whos_turn for conditional check) re run logic for game....
require "./players"
require "./questions"

class Game
  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    loop
  end

  def loop
    while @player1.lives > 0 && @player2.lives > 0
      puts "#{@current_player.lives} lives remaining"
      question = Question.new(@current_player.name)
        if question.check_answer(question.user_input.input.to_i, @current_player.name)  == true
          puts "Good Job"
        else
          @current_player.change_score
          if @current_player.lives == 0
            puts "You lose #{@current_player.name}"
            return
          end
        end
       if @current_player == @player1
        @current_player = @player2 
       else 
        @current_player = @player1
       end
    end
    
  end
  
  # def whos_turn
  #   def turn(@Player) 
  #   if turn = 1
  #     whos_turn = player1
  #   end
  
  #   if turn = 2 
  #     whos_turn = player2
  #   end
  #   print "It is #{whos_turn}'s turn:"
  # end
  # question - check answer

  # def change_turn()
  #   if turn = 1 
  #     turn += 1
  #   elsif turn = 2
  #     turn -= 1
  #   end  







# end

# @player_score = "P1: #{player1_score}/3 vs P2: #{player2_score}/3"
#   @question_message = "#{player}: What does #{num1} plus #{num2} equal?"
#   @correct_message = "#{player}: Yes. You are correct!"
#   @incorrect_message = "#{player}: Seriously? Nope!...with extra Nope Sauce."
#   @game_over_message = "#{player} wins with a score of #{player???_score}" ## need logic to display correct score
#   @good_bye_message = "Good bye."





end
