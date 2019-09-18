require("minitest/autorun")
require("minitest/rg")
require_relative("../Game")
require_relative("../HiddenWord")
require_relative("../Player")

class TestGame < Minitest::Test

  def setup
    @hidden_word = HiddenWord.new("pineapple")
    @hidden_word2 = HiddenWord.new("cat")
    @player1 = Player.new("Tim")
    @game = Game.new()
  end

  def test_has_guessed_letters()
    assert_equal([], @game.guessed_letters())
  end

  def test_player_guess_array()
    @game.add_player_guess_to_array("q")
    assert_equal(["q"], @game.guessed_letters())
  end

  def test_remove_life_if_incorrect()
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    assert_equal(5, @player1.lives)
  end

  def test_game_lost()
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    @game.remove_life_if_incorrect("q", @player1, @hidden_word)
    assert_equal("Game over.", @game.game_lost(@player1))
  end

  def test_send_guess_to_hidden_word()
    @game.send_guess_to_hidden_word("c", @hidden_word2)
    assert_equal("c**", @hidden_word2.change_display("c"))
  end


  def test_game_won
    @game.send_guess_to_hidden_word("c", @hidden_word2)
    @game.send_guess_to_hidden_word("a", @hidden_word2)
    @game.send_guess_to_hidden_word("t", @hidden_word2)

    # assert_equal("cat", @hidden_word2.display)
    assert_equal("Well done! You guessed correctly", @game.game_won(@hidden_word2))
  end

  def test_player_guesses_letter__correct()
    @game.player_guess_letter("c", @hidden_word2, @player1)
    assert_equal("c**", @hidden_word2.display())
    assert_equal(["c"], @game.guessed_letters())
  end

  def test_player_guesses_letter__incorrect()
    @game.player_guess_letter("z", @hidden_word2, @player1)
    assert_equal(5, @player1.lives)
  end

end
