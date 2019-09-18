class HiddenWord

  attr_reader(:word, :display)

  def initialize(input_word)
    @word = input_word
    @word_array = @word.split("")
    @display = @word.gsub /#{@word_array}/, "*"
    # length = @word_array.length()
    # while length > 0
    #   @display.push("*")
    #   length -= 1
    # end
  end

  # def encrypt_word()
  #   length = @word_array.length()
  #   while length > 0
  #     @display.push("*")
  #     length -= 1
  #   end
  # end

  def guess(letter)
    return @word.include?(letter)
  end

  def change_display(letter)
    if guess(letter)
      @word_array.delete(letter)
      @display = @word.gsub /#{@word_array}/, "*"
      return @display
    end
    return @display
  end


end
