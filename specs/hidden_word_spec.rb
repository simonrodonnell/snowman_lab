require("minitest/autorun")
require("minitest/rg")
require_relative("../HiddenWord")

class TestHiddenWord < Minitest::Test

  def setup
    @hidden_word = HiddenWord.new("pineapple")
  end

  def test_has_word()
    assert_equal("pineapple", @hidden_word.word())
  end

  def test_encrypt_word
    @hidden_word.encrypt_word()
    assert_equal(9, @hidden_word.display.length)
  end


end
