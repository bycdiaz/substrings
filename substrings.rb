# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings
# (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# initial solution
# def substrings(word,dictionary)
#   word = word.downcase.gsub(/[^a-z0-9\s]/i, '')
#   repeats = Hash.new 0
#   dictionary.each { |entry|
#     if word.include?(entry)
#       # puts "#{entry} was found inside of #{word}!"
#       repeats[entry] += 1
#     end
#   }
#   repeats
# end

# p substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

# addressing string with many words
def substrings(word,dictionary)
  word = word.downcase.gsub(/[^a-z0-9\s]/i, '')
  repeats = Hash.new 0
  dictionary.each { |entry|
    word.split(" ").each { |word|
      if word.include?(entry)
        repeats[entry] += 1
      end
    }
  }
  repeats
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }