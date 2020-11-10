#Plan

# initialized with:
# inital - message for lives remaining on each turn for each player
#   1. message for question includes numbers....
#   2. message for correct answer includes player 
#   3. message for incorrect answer includes player 
#   4. message for game over includes score and player 
#   5. 'Good bye' message displayed after game over message
# Behaviour - Methods
#   Display correct message at correct time
#   initial message with player score on each turn (player_score)
#     1. display message for question (question_message)
#     2. display message for correct answer (correct_message)
#     3. display message for incorrect answer (incorrect_message)
#     4. display message for game over (game_over_message)
#     5. display 'Good bye' message (good_bye_message)

## need player score for message import file
## need player for message import file
## need random numbers for message import file

class Messages
  attr_reader 
    :player_score, 
    :question_message, 
    :correct_message, 
    :incorrect_message, 
    :game_over_message, 
    :good_bye_message

  def inialize(
    player_score, 
    question_message, 
    correct_message, 
    incorrect_message, 
    game_over_message, 
    good_bye_message
  )

  @player_score = "P1: #{player1_score}/3 vs P2: #{player2_score}/3"
  @question_message = "#{player}: What does #{num1} plus #{num2} equal?"
  @correct_message = "#{player}: Yes. You are correct!"
  @incorrect_message = "#{player}: Seriously? Nope!...with extra Nope Sauce."
  @game_over_message = "#{player} wins with a score of #{player???_score}" ## need logic to display correct score
  @good_bye_message = "Good bye."



  
  