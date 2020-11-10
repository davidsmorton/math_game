Example output

Player1: What does 5 plus 3 equal?
>9
Player1: Seriously? Nope!...with extra Nope Sauce.
P1: 2/3 vs P2: 3/3

------ NEW TURN ------

Player2: What does 2 plus 6 equal?
> 8
Player2: Yes. You are correct!
P1: 2/3 vs P2: 3/3

------ NEW TURN ------

Player1 wins with a score of 1/3

------ GAME OVER ------
Good Bye.

Nouns 
### UserInput
gets.chomp 
set it to 'answer' variable 
error handle with only characters from 0-9

puts "Enter numeric value: "
result = gets

if result =~ /^-?[0-9]+$/
    puts "Valid input"
else
    puts "Invalid input."
end



### Players - will provide input via terminal
initialized with: 
  a score of 3
  a Player1 - first player 
  a Player2 - second player 
  change_score - reduces score of player when an incorrect respons is give

### Question
Set the frame work of the game by generating two ramdom numbers between 1-20
Asks the players for the sum
initialized with:
  Gen Random numbers
  Question (actual math question)
  Behaviour (Methods)
    Gen random numbers 
    Question (via Messages)
    sum of random numbers (ref Answers validator)
    answer_validator - checks actual user input vs expected 

### Messages 
initialized with:
inital - message for lives remaining on each turn for each player
  1. message for question includes numbers....
  2. message for correct answer includes player 
  3. message for incorrect answer includes player 
  4. message for game over includes score and player 
  5. 'Good bye' message displayed after game over message
Behaviour - Methods
  Display correct message at correct time
  initial message with player score on each turn (player_score)
    1. display message for question (question_message)
    2. display message for correct answer (correct_message)
    3. display message for incorrect answer (incorrect_message)
    4. display message for game over (game_over_message)
    5. display 'Good bye' message (good_bye_message)

### Game
initialized with: 
  Players 
  Score 
  Answers
  Messages
  Questions

Behaviour
1. Who's turn is it(player1 or player2) (whos_turn) - conditional based on inital value of "player1"
2. What question to ask(randomly generated question from Questions) 
3. Check answer with Answers - compare input to executed answer (actual vs. expected) 
4. Display message if correct or Display message if incorrect 
5. update score and display 

write conditional if user response is not nil then set current user to other user (i.e. Player1's answer is 5 then set current user to Player2)
6. start new turn with the other player (loop back to whos_turn for conditional check) re run logic for game....


//// not used ////

Answers
initialized with:
  current user
user input - (numbers)
Behaviour - Methods
  user responses (handles command line input)
  validator - checks the input agiainst actual calculated answer

Score 
initialized with: (from players)
  default score of 3
  a Player1 - first player 
  a Player2 - second player 
Behaviour - Methods
1. keeps track of the number of incorrect questions for each player (player_score)

Conditional on player_score
2. if number of incorrect is > 3  trigger (game_over_message) triggers (good_bye_message)

 




