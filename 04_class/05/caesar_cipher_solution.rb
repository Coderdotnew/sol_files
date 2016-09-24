def caesar_encrypt(shift, text)
  text_array = text.split("")
  encrypted_code = []
  text_array.each do |letter|
    if (97..122).include?(letter.ord)
      if letter.ord + shift > 122
        shifted = letter.ord + shift - 26
        encrypted_code << shifted.chr
      else
        shifted = letter.ord + shift
        encrypted_code << shifted.chr
      end
    elsif (65..90).include?(letter.ord)
      if letter.ord + shift > 90
        shifted = letter.ord + shift - 26
        encrypted_code << shifted.chr
      else
        shifted = letter.ord + shift
        encrypted_code << shifted.chr
      end
    else
      encrypted_code << letter.ord.chr
    end
  end
  encrypted_code.join
end

# or

def caesar_encrypt(shift, text)
  text_array = text.split("")
  num_array = []
  num_array = text_array.collect do |letter|
    # checks if its a letter - not a number or punctuation/special character 
    if (65..90).include?(letter.ord) || (97..122).include?(letter.ord) 
      shift_letter = letter.ord + shift
      # checks if letter need to be looped back to beginning of alphabet
      if (letter.ord < 91 && shift_letter > 90) || (letter.ord < 123 && shift_letter > 122) 
        shift_letter = letter.ord - 26 + shift # calculates which letter spot it should be looped back to
        shift_letter.chr # converts the number into the new letter
      else 
      shift_letter.chr
      end
    
    else
      letter
    end
  end
  num_array.join
end



# or

def caesar_encrypt(shift, text)
  code = []
  text.each_char do |char|
    ascii = char.ord
    if ascii.between?(97, 122)
      shifted = (ascii + shift > 122)? (ascii + shift - 26) : (ascii + shift)
      code << shifted.chr
    elsif ascii.between?(65, 90)
      shifted = (ascii + shift > 90)? (ascii + shift - 26) : (ascii + shift)
      code << shifted.chr
    else
      code << ascii.chr
    end
  end
  code.join
end


