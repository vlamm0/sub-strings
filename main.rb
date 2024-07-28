DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# gets input string from user
def getString()
  puts "Enter string to cross-check with dictionary"
  input = gets.chomp
  return input
end

def formatString(string)
  string.downcase!
  string.gsub!(/[^\w\s]/, '')
  formattedStirng = string.split(" ")
  return formattedStirng
end

def substring(string, dictionary)
  #lookupHash = Hash.new
  arr = formatString(string)
  p arr
  arr.reduce(Hash.new(0)) {|lookupHash, word| 
  p lookupHash
  if dictionary.include?(word)
    lookupHash[word] += 1
  end
  lookupHash
  }
  #return lookupHash
end

p substring("Howdy partner, sit down! How's it going?", DICTIONARY)
#Howdy partner, sit down! How's it going?"
