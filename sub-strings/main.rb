dictionary = ["below",
"down",
"go",
"going",
"horn",
"how",
"howdy",
"it",
"i",
"low",
"own",
"part",
"partner",
"sit"]

def substrings(string, dictionary)
  output_hash = Hash.new(0)
  dictionary.each do |word|
    count = string.downcase.scan(word).count
    output_hash[word] += count
  end
  output_hash.delete_if { |_, value| value == 0}

  return output_hash

end

substrings("Howdy partner, sit down! How's it going?", dictionary)