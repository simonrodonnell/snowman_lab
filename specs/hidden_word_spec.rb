require("minitest/autorun")
require("minitest/rg")
require_relative("../HiddenWord")

class TestHiddenWord < Minitest::Test

  def test_has_word()
    hidden_word = HiddenWord.new("pineapple")
    assert_equal("pineapple", hidden_word.word())
  end

end
