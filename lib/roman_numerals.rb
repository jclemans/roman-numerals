def roman_numerals(number_input)
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



def numify(string)
  comma_number = string.gsub(/(I(?i)V)|(I(?i)X)|(X(?i)L)|(X(?i)C)|(C(?i)D)|(C(?i)M)|I|V|X|L|C|D|M/, 'IV' => '4,', 'IX' =>'9,', 'XL' => '40,','XC' => '90,', 'CD' => '400,', 'CM' => '900,', 'I' => '1,', 'V' => '5,', 'X' => '10,', 'L' => '50,', 'C' => '100,', 'D' => '500,', 'M' => '1000,')
  comma_number[0..-2]
  comma_array = comma_number.split(",")
  running_total = 0

  comma_array.each do |nums|
    running_total += nums.to_i
  end
  running_total
end

puts numify("MMCCXXIX")
