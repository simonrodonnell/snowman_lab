require("minitest/autorun")
require("minitest/rg")
require_relative("../Game")
require_relative("../HiddenWord")
require_relative("../Player")

class TestGame < Minitest::Test

  def setup
    @hidden_word = HiddenWord.new("pineapple")
    @player1 = Player.new("Tim")
  end


end
