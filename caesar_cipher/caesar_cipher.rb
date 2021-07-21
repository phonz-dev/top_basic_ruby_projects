def cipher_word(word, number)
    alpha = ("a".."z").to_a
    new_word = ""
    word.each_char do |ch|
        if alpha.include?(ch.downcase)
            shifted_idx = (alpha.index(ch.downcase) + number) % alpha.length
            if ch == ch.upcase
                new_word += alpha[shifted_idx].upcase
            else
                new_word += alpha[shifted_idx]
            end
        else
            new_word += ch
        end
    end
    new_word
end

def caesar_cipher(message, number)
    words = message.split
    new_words = words.map { |word| cipher_word(word, number) }
    new_words.join(" ")
end

p caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"