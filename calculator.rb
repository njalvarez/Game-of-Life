# -Accepts 2 numbers from user
# -Accepts a operation from the user
# -Return the result of that operation
# -Must support addition subtraction, multiplication, and division

# -Allow users to perform another operation
# -Exponent, square root

# puts 'Enter a number:'
# number1 = gets

# puts 'Enter another number:'
# number2 = gets


def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

continue = 'y'
while continue == 'y'

puts "Would you like to [add], [multiply], or [subtract]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

end

answer = get_int_values.inject(operator)
puts "The answer is... #{ answer }"

puts "would you like to do another? Y/N"
continue = gets.chomp

end
