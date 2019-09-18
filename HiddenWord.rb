class HiddenWord

  attr_reader(:word, :display, :correct_guess)

  def initialize(input_word)
    @word = input_word
    @word_array = @word.split("")
    @display = @word.gsub /#{@word_array}/, "*"
    @correct_guess = false
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
      if @word_array.empty? != true
        @display = @word.gsub /#{@word_array}/, "*"
        return @display
      else
        @display = @word
        @correct_guess = true
        return @display
      end
    end
    return @display
  end


end
