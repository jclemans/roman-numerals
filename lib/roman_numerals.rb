def roman_numeralizer(number_input)
  compiled_numeral = []
  number_to_change = number_input
  roman_hash = {1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM', 1000 => 'M'}
  while number_to_change > 0 do
    roman_hash.reverse_each do |number, symbol|
      if number_to_change >= number
        compiled_numeral << symbol
        number_to_change -= number
      end
      redo if number_to_change >= number
    end
  end
  compiled_numeral.join
end
