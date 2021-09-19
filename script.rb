def caesar_cipher(word, shift)
  # turn string characters into numbers
  word_array = word.chars.map { |char| char.ord}
  # logic for shift and wrapping from z to a
  shifted = word_array.map do |char| 
    base = char < 91 ? 65 : 97
    if char.between?(65,90) || char.between?(97,122)
      char = (((char - base) + shift) % 26) + base
    else
      char
    end
  end
  # join array to single string
  shifted.map { |char| char.chr }.join
end

puts caesar_cipher("Andy is a cool dude", 5)