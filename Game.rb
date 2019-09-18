class Game

  attr_reader(:guessed_letters, :input_guess)

  def initialize()
    @guessed_letters = []
    @input_guess = nil
  end

  def add_player_guess_to_array(letter)
    @guessed_letters.push(letter)
  end

  def remove_life_if_incorrect(guess, player, hidden_word)
    if hidden_word.guess(guess) == false
      player.remove_player_life()
    end
  end

  def game_lost(player)
    return "Game over." if player.lives == 0
  end

  def send_guess_to_hidden_word(letter, hidden_word)
    hidden_word.change_display(letter)
  end

  def game_won(hidden_word)
    return "Well done! You guessed correctly" if hidden_word.correct_guess
  end

end
