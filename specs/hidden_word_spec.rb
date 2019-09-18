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
    # @hidden_word.encrypt_word()
    assert_equal(9, @hidden_word.display.length)
  end


  def test_guess__is_correct()
    assert_equal(true, @hidden_word.guess("p"))
  end

  def test_guess__is_false()
    assert_equal(false, @hidden_word.guess("z"))
  end

  def test_guess_displays_correct_letter
    assert_equal("p****pp**", @hidden_word.change_display("p"))
  end

end
