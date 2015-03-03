puts "Hello World"
puts "Welcome to the first day of devpointlabs!"


# Ruby Exercise - Detect if number is odd/even or divisible by 3

# -Look up methods for integer that might solve the first problem
# -Look up the modulus (%) operator


# puts 4.even?

# puts 5.even?

# def divisible_by_3(number)
#   puts number % 3 == 0
# end


# divisible_by_3(3)
# divisible_by_3(5)
# divisible_by_3(9)
# divisible_by_3(11)

def is_even?(number)
  puts number % 2 == 0
end

def is_odd?(number)
  puts number % 2 == 1
end

is_even?(4)
is_even?(5)

is_odd?(4)
is_odd?(5)


