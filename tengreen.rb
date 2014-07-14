

puts 'Please enter a number'
input = gets.chomp.to_i
while input < 1
if input ==0
  puts 'zero'
  break
end
  puts 'Please enter a number greater than zero'
  input = gets.chomp.to_i
end


def english_number number
  singles = ['','one', 'two','three','four','five','six','seven','eight','nine','ten','eleven', 'twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  tens = ['ten', 'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  powers =['one','ten', 'hundred','thousand', 'million', 'billion','trillion']
  units = [1,10,100,1000,1000000,1000000000,1000000000000]
  num_string =''
  multiple = 0
  if number == 0
    return num_string
  end
  if number <100
    tenmult = number/10
    digit = number%10
    if tenmult>1
      return tens[tenmult-1]+ ' '+ singles[digit]+' '
    else
      return singles[number]+' '
    end
  end
  idx = units.length
  while multiple == 0
    idx = idx-1
    multiple = number/units[idx]
    end
    remainder = number%units[idx]
 num_sting = english_number(multiple) +powers[idx] + ' ' + english_number(remainder)
end

puts english_number(input).capitalize
while input>1
  puts english_number(input).capitalize + 'green bottles sitting on the wall'
  puts english_number(input).capitalize + 'green bottles sitting on the wall'
  puts "And if one green bottle should accidentally fall"
  if input >2
  puts 'There would be '+english_number(input-1)+'green bottles sitting on the wall'
  else
  puts 'There would be '+english_number(input-1)+'green bottle sitting on the wall'
  end
  puts ''
  input = input -1
end
puts 'One green bottle sitting on the wall'
puts 'One green bottle sitting on the wall'
puts "And if one green bottle should accidentally fall"
puts 'There would be no green bottles sitting on the wall'