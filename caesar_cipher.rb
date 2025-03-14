# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"


#check for incorrect method parameter 
  #check first parameter 
    #is it empty
    #is it not a string
  #check second parameter 
    #is it empty?
    #is it a number?
      #is it negative
      #is it a float? 

#if correct parameter 
  #split the text into array
  #go thorugh each element 
    #if its non alphabet dont do anything
    #shift the letter with the value of second parameter
      #preserve the case, check for wrapping (z to a)
  #join the changed array 

  #return the ciphered string

  def check_incorrect_parameter(phrase, shift_value)
    return  false if  phrase.class != String || phrase.empty? 
    return  false if shift_value != Numeric|| shift_value < 0 || shift_value.class == Float || shift_value.empty?

  end

  def right_shift_letter(letter,shift_value)
    #check if its alphabet 
    lowercase = ('a'..'z')
    uppercase = ('A'..'Z')
    #return non alphabet
    return letter unless lowercase.include?(letter) || uppercase.include?(letter)

    #check case 

    is_lowercase = false

    is_lowercase = true if lowercase.include?(letter) 

    
    letter_code = letter.downcase.ord
    shifted_value = letter_code + shift_value

    if shifted_value > 122
      # 96 because 97 is 'a'. if its 97 it adds one more shift
      if is_lowercase
        return (96 + (shifted_value - 122)).chr

      else
        return (96 + (shifted_value - 122)).chr.upcase

      end

    else
      if is_lowercase
        return shifted_value.chr
      else
        #change case if its not lowercase 
        return shifted_value.chr.upcase
      end
    end
  

    

    # z = 122 
    # a = 97


  end

  def caesar_cipher(phrase, shift_value)

  end

  

  