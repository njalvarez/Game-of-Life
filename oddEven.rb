# ODD OR EVEN

# -one player will chose odd or even. 
# -both players will chose a number between (0-5)
# -add both player's numbers together
# -the sum is either odd or even
# -if the player chose correctly then that player won. 

# Pseudocode

# -ask for input odd or even
# -get the input
# -ask for the number
# -computer create number
# -add numbers together
# -determin winner or loser
@values = []

def get_int_values
  @values = [gets, rand(6).to_s].map{ |s| s.chomp.to_i}
end

continue = 'y'
while continue == 'y'

puts "\nWhich do you chose [odd] or [even]?"
response = gets.chomp


case response.downcase
when 'odd'
  puts "\nwhat numbers are you competing?"
  operator = :+

when 'even'
  puts "\nwhat numbers are you competing?"
  operator = :+
    
  end  

  answer = get_int_values.inject(operator)
  puts "\nThe computers number is... #{@values[1]}"

  puts "\nThe total answer is... #{ answer }"

  if answer.even?
    puts "\nThis answer is even"
  else answer.odd?
    puts "\nThis answer is odd"
end

  puts "\nWould you like to play again? y/n"
  continue = gets.chomp

end