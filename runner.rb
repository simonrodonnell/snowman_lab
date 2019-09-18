require_relative("Game")
require_relative("Player")
require_relative("HiddenWord")

puts "What is the secret word?"
secret_word = gets.chomp
hidden_word = HiddenWord.new(secret_word)
system("clear")
puts hidden_word.display()
