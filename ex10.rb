# puts "I am 6'2\" tall."  # escape double-quote inside string
# puts 'I am 6\'2" tall.'  # escape single-quote inside string




# print "How old are you?"
# age = gets.chomp
# print "how tall are you"
# height = gets.chomp
# print "how much do you weigh"
# weight = gets.chomp

# puts "so, you are #{age} old, #{height} tall and #{weight} heavy."




# first, second, third = ARGV  #The ARGV is a method that enables you to place the variables in the comand line to print

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

user_name = ARGV.first
prompt = '>'

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
"""



