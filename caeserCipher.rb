def caeser_cipher(string, number)
    encrypted_string = []
    string_to_downcase_array = string.downcase.split('')
    for letter in string_to_downcase_array
        if !letter.match?(/[A-Z]/i)
            encrypted_string.push(letter)
            next
        elsif letter.match?(/[A-Z]/i)
            if (letter.ord + number) > 122
                letter = ((letter.ord + number) - 26).chr
            elsif (letter.ord + number) < 97
                letter = ((letter.ord + number) + 26).chr
            else letter = (letter.ord + number).chr
            end
        end
        encrypted_string.push(letter)
    end
    encrypted_string.join('')
end 
p caeser_cipher("What a string!", 5) 


def caeser_decipher(string, number)
    encrypted_string = []
    string_to_downcase_array = string.downcase.split('')
    for letter in string_to_downcase_array
        if !letter.match?(/[A-Z]/i)
            encrypted_string.push(letter)
            next
        elsif letter.match?(/[A-Z]/i)
            if (letter.ord - number) > 122
                letter = ((letter.ord - number) - 26).chr
            elsif (letter.ord - number) < 97
                letter = ((letter.ord - number) + 26).chr
            else letter = (letter.ord - number).chr
            end
        end
        encrypted_string.push(letter)
    end
    encrypted_string.join('')
end 
p caeser_decipher("bmfy f xywnsl!", 5) 