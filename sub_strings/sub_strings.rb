def word_substrings(word)
    substrings = []
    (0...word.length).each do |start_pos|
        (start_pos...word.length).each do |end_pos|
            substrings << word[start_pos..end_pos].downcase
        end
    end
    substrings
end


def substrings(message, dictionary)
    words = message.split
    substrings_count = Hash.new(0)
    words.each do |word|
        substrings = word_substrings(word)
        substrings.each do |substring|
            if dictionary.include?(substring)
                substrings_count[substring] += 1
            end
        end
    end
    substrings_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
# #=> { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
