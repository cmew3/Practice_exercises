CX

puts 'Enter roman numeral'
input = gets.chomp.downcase 


def roman_to_numeral roman
  roman_hash = {          
  'i' => 1,
  'v' => 5,
  'x' => 10,
  'l' => 50,
  'c' => 100,
  'd' => 500,
  'm' => 1000,
  }
  number =0
  idx = 0
  while idx <=roman.length-2
    unit = roman_hash[roman[idx]]
    nextn = roman_hash[roman[idx+1]]
    if unit >= nextn
      number = number + unit
    else
      number = number - unit
    end
    idx = idx+1
  end
  number = number + roman_hash[roman[idx]]
  return number
end
puts roman_to_numeral(input)