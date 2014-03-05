def roman_numerals(number_input)
  roman_hash = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
  roman_numerals_array = []
  # until roman_numerals_array >= number_input
  #   roman_hash.each do |number, symbol|
  # roman_hash[number_input]
  
  until number_input < 1
    is_four = false
    is_nine =false
    #remainder = 0

    roman_hash.reverse_each do |number, symbol|
      if number_input == 4 && number_input + 1 >= number 
        roman_numerals_array << roman_hash[5]
        number_input = number - number_input
        is_four = true
      elsif number_input == 9 && number_input + 1 >= number
        roman_numerals_array << roman_hash[10]
        number_input = number - number_input
        is_nine = true
      elsif number_input >= number 
        if is_four || is_nine
          roman_numerals_array.unshift(symbol)
        else
          roman_numerals_array << symbol
        end
          number_input -= number
      end
    end
  end
  roman_numerals_array.join
end

puts roman_numerals(700)
