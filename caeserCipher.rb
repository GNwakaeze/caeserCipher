# def caeserCipher(string. numX)
#  string
# end
require 'pry-byebug'
def x(string, num)
    newAr = []
    string_to_downcase_array = string.downcase.split('')
    for letter in string_to_downcase_array
        # if !letter.is_a?(String)
        #     newAr.push(letter)
        # elsif letter.is_a?(String)
            if (letter.ord + num) > 122
                letter = ((letter.ord + num) - 26).chr
            elsif (letter.ord + num) < 97
                letter = ((letter.ord + num) + 26).chr
            else letter = (letter.ord + num).chr
            end
        #end
        newAr.push(letter)
    end
    newAr.join
end 
p x('1a2b3c', 2)




# def x(string, num)
#     string_to_downcase_array = string.downcase.split('')
#     for letter in string_to_downcase_array
#         puts letter
#         if !letter.is_a?(String)
#             puts letter
#             next
#         elsif letter.is_a?(String)
#             if (letter.ord + num) > 122
#                 new_letter = ((letter.ord + num) - 26).chr
#             elsif (letter.ord + num) < 97
#                 new_letter = ((letter.ord + num) + 26).chr
#             else new_letter = (letter.ord + num).chr
#             end
#         letter = letter.sub(letter, new_letter)
#         puts letter
#         end
#     end
# end




# # this will iterate through each letter if the strung 


# we take the string and make is lower case 
#     turn into an array and loop through each letter
#     if its not a letter, next 
#     for each letter turn it into a new letter
#     join the array back to a sring
  


# This takes a letter and changes it into a new letter. The if statements, keep the letters between a -z
# def encrypt_letter(letter, num)
#     if (letter.ord + num) > 122
#         new_letter = ((letter.ord + num) - 26).chr
#     elsif (letter.ord + num) < 97
#         new_letter = ((letter.ord + num) + 26).chr
#     else new_letter = (letter.ord + num).chr
#     end
#     letter = letter.sub(letter, new_letter)
# end 


def x(string, num)
    string_to_downcase_array = string.downcase.split('')
    string_to_downcase_array.each do |letter|
        if !letter.is_a?(String)
            next
        elsif letter.is_a?(String)
            if (letter.ord + num) > 122
                new_letter = ((letter.ord + num) - 26).chr
            elsif (letter.ord + num) < 97
                new_letter = ((letter.ord + num) + 26).chr
            else new_letter = (letter.ord + num).chr
            end
            letter = letter.sub(letter, new_letter)
        end
        string_to_downcase_array.join('')
    end
end