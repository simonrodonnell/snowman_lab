require("minitest/autorun")
require("minitest/rg")
require_relative("../Game")
require_relative("../HiddenWord")
require_relative("../Player")

class TestGame < Minitest::Test

  def setup
    @hidden_word = HiddenWord.new("pineapple")
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

end
