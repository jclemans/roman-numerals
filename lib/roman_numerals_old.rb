roman_numerals_array = []
current_roman_num = []

def roman_numerals(number_input)
  
  # until roman_numerals_array >= number_input
  #   roman_hash.each do |number, symbol|
  # roman_hash[number_input]
  number_array = number_input.to_s.split('')

  loop_count = 0

  number_array.reverse_each do |num|
    current_roman_num = []
    
    if loop_count > 0
      loop_count.times do
        current_number = num.concat('0')
      end
    end

    current_number = num.to_i

    until current_number < 1
      check_hash(current_number)
    end

    loop_count += 1
    roman_numerals_array.unshift(current_roman_num.join)
  end

  roman_numerals_array.join('|')
    
end

def check_hash(current_number)
  is_four = false
  is_nine =false

  roman_hash = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}

  roman_hash.reverse_each do |number, symbol|
    if current_number == 4 && current_number + 1 >= number 
      #puts 'hit 4'
      current_roman_num << roman_hash[5]
      current_number = number - current_number
      is_four = true
    elsif current_number == 9 && current_number + 1 >= number
      #puts 'hit 9'
      current_roman_num << roman_hash[10]
      current_number = number - current_number
      is_nine = true
    elsif current_number >= number 
      if is_four || is_nine
        current_roman_num.unshift(symbol)
      else
        puts symbol + ' hit else'
        current_roman_num << symbol
      end
      current_number -= number
      #puts current_number
    end
    # if current_number >= number 
    #   check_hash(current_number)
    # end
  end



end

puts roman_numerals(18)
