class HiddenWord

  attr_reader(:word, :display)

  def initialize(input_word)
    @word = input_word
    @word_array = @word.split("")
    @display = []
  end

  def encrypt_word()
    length = @word_array.length()
    while length > 0
      @display.push("*")
      length -= 1
    end
  end

  def guess(letter)
    return @word.include?(letter)
  end

end
