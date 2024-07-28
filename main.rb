DICTIONARY = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# gets input string from user
def getString()
  puts "Enter string to check against dictionary"
  input = gets.chomp
  return input
end

# returns a hash where the string is checked against a dictionary 
def substring(string, dictionary)
  string.downcase!
  dictionary.reduce(Hash.new(0)) {|checkHash, word|
  #checks how many dictionary words exist within given string
  if string.include?(word) then checkHash[word] = string.scan(/#{word}/).length end 
  checkHash}
end

p substring(getString(), DICTIONARY)
