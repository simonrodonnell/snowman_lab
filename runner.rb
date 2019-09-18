require_relative("Game")
require_relative("Player")
require_relative("HiddenWord")

# new game
system("clear")
game = Game.new()
player = Player.new("Player 1")

#setup game
print "Create a secret word: "
secret_word = gets.chomp()
hidden_word = HiddenWord.new(secret_word)
system("clear")
@attempts = 0
snow_art_6 = "
   _==_ _
 _,(\",)|_|
  \\/. \\-|
__( :  )|_

"
snow_art_5 = "

 _,(\",)|_|
  \\/. \\-|
__( :  )|_

"
snow_art_4 = "


  \\/. \\-|
__( :  )|_

"
snow_art_3 = "



__( :  )|_

"
snow_art_2 = "



  ( :  )|_

"
snow_art_1 = "



  ( :  )

"

#start game
while player.lives > 0
  puts "#### SNOWMAN ####"
  # melting snowman
  if player.lives == 6
    puts snow_art_6
  elsif player.lives == 5
    puts snow_art_5
  elsif player.lives == 4
    puts snow_art_4
  elsif player.lives == 3
    puts snow_art_3
  elsif player.lives == 2
    puts snow_art_2
  else player.lives == 1
    puts snow_art_1
  end
  puts "You have #{player.lives} lives remaining."
  puts "You have tried #{@attempts} times: #{game.guessed_letters.join.upcase}" if game.guessed_letters.length > 0
  puts hidden_word.display()
  print "Guess a letter: "
  guess = gets.chomp[0].downcase
  if game.guessed_letters.include?(guess) != true
    game.player_guess_letter(guess, hidden_word, player)
    @attempts =+ 1
    system("clear")
    if hidden_word.correct_guess == true
      system("clear")
      puts "#### SNOWMAN ####"
      puts snow_art_6
      puts "Congratulations!"
      puts "You guessed correctly!"
      puts "The secret word was #{hidden_word.word()}."
      break
    end
  else
    print "You already tried '#{guess.upcase}'. Try again..."
    gets
    @attempts =+ 1
    system("clear")
  end
end
#game lost
puts "The snowman has melted. You have failed." if player.lives() == 0
