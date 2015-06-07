puts "Please enter your string: "
text = gets.chomp.downcase
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
text = text.split(" ")

def substrings(text, dictionary)
  frequencies = Hash.new(0)
  #iterate through user input
  text.each do |word| 
    #iterate through dictionary and compare each word against word from user input
    dictionary.each do |word2|
      #if there is a match, add dictionary word to hash and keep track of number of its
      if word.match(word2)
        frequencies[word2] += 1
      end
    end
  end
  
  #print out hits to console
  puts frequencies
end

#call substring method
substrings(text, dictionary)
