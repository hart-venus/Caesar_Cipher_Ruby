
def caesar_cipher(string, shift)
    alphabet = ('a'..'z').to_a
    new_string = ''

    string.each_char { |character|

        is_uppercase = (character == character.upcase)
        if alphabet.include?(character.downcase)
            
            shifted_index = alphabet.find_index(character.downcase) + shift
            if shifted_index > alphabet.length - 1
                shifted_index = shifted_index % alphabet.length
            end
            if is_uppercase
                new_string += alphabet[shifted_index].upcase
            else
                new_string += alphabet[shifted_index]
            end
            
        else
            new_string += character
        end
    }
    return new_string
end

puts caesar_cipher('What a string!', 5)