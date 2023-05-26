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
    p result
end

print "Enter string:"

string = gets.chomp


shift = nil
#Loop repeats till valid integer is inputted

loop do
  print "Enter the shift factor for the cipher (an integer): "
  shift = gets.chomp

  #Checks if input is valid integer
  #Converts to int then back to string. If the value is the same it's a valid int.
  break if shift.to_i.to_s == shift

  # break if Integer(shift, exception: false)
  # Alt method, attempts to convert to Integer constructor.

  puts "Invalid input. Please enter an integer."
end

caesar_cipher(string, shift.to_i)