DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# gets input string from user
def getString()
  puts "Enter string to cross-check with dictionary"
  input = gets.chomp.downcase
  puts input
end

def substring(string)
  lookupHash = Hash.new
  if DICTIONARY.include?(string)
    lookupHash[string] = 1
  end
  return lookupHash
end

p substring("go")

