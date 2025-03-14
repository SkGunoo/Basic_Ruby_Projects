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

  