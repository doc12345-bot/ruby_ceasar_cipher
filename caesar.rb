def caesar_cipher(string, steps)
    #code here
    split = string.split("")
    split.each_with_index do |char, index|
        x = char.ord #convert to ASCII code

        #if upper case
        if x.between?(65, 90)
            x += steps
            #check if number is higher than z
            x -= 26 if x > 90
        #if lowercase
        elsif x.between?(97, 122)
            x += steps
            #check if number is higher than z
            x -= 26 if x > 122
        end
        split[index] = x.chr
    end
    result = split.join("")
    puts result
end