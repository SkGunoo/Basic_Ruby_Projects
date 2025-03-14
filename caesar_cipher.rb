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

  def rifght_shift_letter(letter)
  end

  def caesar_cipher(phrase, shift_value)
  end


  