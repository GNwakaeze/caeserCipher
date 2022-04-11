def caeser_cipher(string, num)
    newAr = []
    string_to_downcase_array = string.downcase.split('')
    for letter in string_to_downcase_array
        if !letter.match?(/[A-Z]/i)
            newAr.push(letter)
            next
        elsif letter.match?(/[A-Z]/i)
            if (letter.ord + num) > 122
                letter = ((letter.ord + num) - 26).chr
            elsif (letter.ord + num) < 97
                letter = ((letter.ord + num) + 26).chr
            else letter = (letter.ord + num).chr
            end
        end
        newAr.push(letter)
    end
    newAr.join('')
end 
p caeser_cipher("What a string!", 5) 


def caeser_decipher(string, num)
    newAr = []
    string_to_downcase_array = string.downcase.split('')
    for letter in string_to_downcase_array
        if !letter.match?(/[A-Z]/i)
            newAr.push(letter)
            next
        elsif letter.match?(/[A-Z]/i)
            if (letter.ord - num) > 122
                letter = ((letter.ord - num) - 26).chr
            elsif (letter.ord - num) < 97
                letter = ((letter.ord - num) + 26).chr
            else letter = (letter.ord - num).chr
            end
        end
        newAr.push(letter)
    end
    newAr.join('')
end 
p caeser_decipher("bmfy f xywnsl!", 5) 