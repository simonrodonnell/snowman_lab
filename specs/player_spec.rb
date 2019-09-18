require("minitest/autorun")
require("minitest/rg")
require_relative("../Player")

class TestPlayer < Minitest::Test

  def setup
    @player1 = Player.new("Tim")
  end

  def test_player_has_name
    assert_equal("Tim", @player1.name())
  end

  def test_player_has_lives
    assert_equal(6, @player1.lives())
  end

  def test_remove_player_lives()
    @player1.remove_player_life()
    assert_equal(5, @player1.lives)
  end

end
