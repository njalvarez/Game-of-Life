# require 'pry-byebug'
# string_reverse "this is a sentence to test"

# def string_reverse(string)
#   string = string.split('')
#   p string
#   new_array = []
#   new_array.push(string.pop)
#   p new_array
# end



# 18.downto(1) {|n| puts n}


#second example
initial_string = "this is a sentence to test"  #global variable because any part of the code can access it.

def string_reversal(string_parameter) #local variables you can only use per section of code or whever it lies
  string_parameter.reverse
#   result = ''
#   string_parameter.chars.each do |char|
#   result = char + result
# end
# result
end


def capitalize_everyother_word(string_parameter)
  result = []
  #array_of_words = string_parameter.split
  string_parameter.split.each_with_index do |word, i| # the each method will return the original object it was working on, each creates and array and when it is done it returns that array
  #result = string_parameter.split.each_with_i.map do |word, i|  # 
    if i % 2 !=0
      result << (i.even? ? word.capitalize : word)
  end
 result.join(' ')
end

reverse_string = string_reversal(initial_string)
puts capitalize_everyother_word(reverse_string)


#end result
#initial_string.reverse.split.each_with_index.map {|w,i| i.even? ? w.capitalize : w}.join(' ')


#CARLOS VERSION
# Exercise:
# Reverse this string and capitalize every other word:
# "This is just Another String For You to Test With"

# Result:
# "htiW Tset ot Uoy roF Gnirts rehtonA Tsuj si Siht"
# # The next string is also acceptable
# "Htiw tseT Ot uoY Rof gnirtS Rehtona tsuj Si sihT" 

# Notes: You cannot use the .reverse method!
#