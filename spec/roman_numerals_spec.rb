require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('takes a 1 and outputs the corresponding roman numeral') do
    roman_numerals(1).should(eq("I"))
  end

  it('takes a 2 and outputs the corresponding roman numeral compiled') do
    roman_numerals(2).should(eq("II"))
  end

  it('takes a 4 and outputs the corresponding roman numeral compiled') do
    roman_numerals(4).should(eq("IV"))
  end 

  it('takes a 7 and outputs the corresponding roman numeral compiled') do
    roman_numerals(7).should(eq("VII"))
  end
  it('takes a 9 and outputs the corresponding roman numeral compiled') do
    roman_numerals(9).should(eq("IX"))
  end
  it('takes a 22 and outputs the corresponding roman numeral compiled') do
    roman_numerals(22).should(eq("XXII"))
end
