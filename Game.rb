class Game

  attr_reader(:guessed_letters)

  def initialize()
    @guessed_letters = []
  end

  def add_player_guess_to_array(letter)
    @guessed_letters.push(letter)
  end

  def remove_life_if_incorrect(guess, player, hidden_word)
    if hidden_word.guess(guess) == false
      player.remove_player_life()
    end
  end

end
