dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


  def substrings(string, dictionary)
    
    #adds hash as accumulator 
    #turning input phrase into an array of downcase words.
    string.downcase.split.reduce(Hash.new(0)) do |hash, phrase_word|

      #each method to iterate entire elements of dictionary per phrase_word
      dictionary.each do |word| 
        hash[word] += 1 if phrase_word.include?(word)
      end
      #returning final hash
      hash
    end
  end


  puts substrings("Howdy partner, sit down! How's it going?", dictionary)
