def substrings (string, dictionary)

  #make a hash from dictionary
  hash = {}
  dictionary.each{|word| hash[word] = nil}

  string.downcase!

  #scan string to find hash # of times found in string
  dictionary.each do |word|
    if string.scan(/#{word}/).length > 0
      hash[word] = string.scan(/#{word}/).length
    end
  end

  p hash.compact

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)


