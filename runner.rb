require_relative("Game")
require_relative("Player")
require_relative("HiddenWord")

game = Game.new()
player = Player.new("Test")
puts "What is the secret word?"
secret_word = gets.chomp()
hidden_word = HiddenWord.new(secret_word)
system("clear")
puts hidden_word.display()
puts "Guess a letter: "

guess = gets.chomp()

game.player_guess_letter(guess, hidden_word, player)
puts hidden_word.display()
