# 01_dice_roll.rb 
class Dice

  def roll
    rand(1..6)
  end

end

# 02_temp_conversion.rb 
class ConvertTemp
  attr_accessor :temp

  def initialize(temp)
    @temp = temp
  end

  def c_to_f
    (@temp * 9.0 / 5) + 32
  end

  def f_to_c
    ((@temp - 32) * (5.0 / 9)).round(2)
  end

end

# 03_palindrome.rb 
class Palindrome
  attr_accessor :string

  def initialize(string)
    @string = string
  end

  def pal_or_not
    if @string == @string.reverse
      "It's a palindrome!"
    else
      "Not a palindrome."
    end
  end

end

# 04_fizzbuzz.rb
class FizzOrBuzz
  attr_accessor :num 

  def initialize(num) 
    @num = num
  end

  def fizzbuzz
    if @num % 3 == 0 && @num % 5 == 0
      "FizzBuzz"
    elsif @num % 3 == 0
      "Fizz"
    elsif @num % 5 == 0
      "Buzz"
    else
      @num
    end
  end
  
end

# 05_euler.rb
class ProjectEuler

  def fizzbuzz_sum
    i = 0
    for x in (1..999) 
      i += x if (x%3==0) && (x%5==0)
    end
    i
  end

end

# 06_caesar_cipher.rb
class CaesarCipher
  attr_accessor :shift, :message

  def initialize(shift, message)
    @shift = shift
    @message = message
  end

  def encrypt
  text_array = @message.split("")
  encrypted_code = []
  text_array.each do |letter|
    if (97..122).include?(letter.ord)
      if letter.ord + shift > 122
        shifted = letter.ord + @shift - 26
        encrypted_code << shifted.chr
      else
        shifted = letter.ord + @shift
        encrypted_code << shifted.chr
      end
    elsif (65..90).include?(letter.ord)
      if letter.ord + @shift > 90
        shifted = letter.ord + shift - 26
        encrypted_code << shifted.chr
      else
        shifted = letter.ord + @shift
        encrypted_code << shifted.chr
      end
    else
      encrypted_code << letter.ord.chr
    end
  end
  encrypted_code.join
  end
  
end


