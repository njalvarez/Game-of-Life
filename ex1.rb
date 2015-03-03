# player - mus choose rock paper or scisors
# computer -- computermus choose rock paper or scisors

# logic -- rock beats scissors
#          scissors beats paper
#          paper beats rock

# Determine winner
# print output of who won

# Bonus features:

# -have best of 3 or best of 5 options
# -keep tally of wins and losses
# -refactor code for minimum amount of lines

# --try without google first

# Pseudocode -------- (slightly more detailed)

# -ask player for input
# -get input
# -generate computer's choice
# -declare the computer's choice to the player
# -determin who is the winner
# -declare the choices and the winner

continue = 'y'
while continue == 'y'
#asks player for input
puts "\n\nWelcome to Rock Paper, Scissors!\nPress r for Rock\nPress s for Scissors\nPress p for Paper\n"

computer = "rsp"[rand(3)].chr

player = $stdin.gets.chomp.downcase #gets input

case [player, computer] # declairs choices and determins who is the winner

      when ['r', 'r'], ['s', 'p'], ['r', 's'] 

      puts "\n\nYou win!" 

      when ['r', 'r'], ['s', 's'], ['p', 'p']

      puts "\n\nYou tied!"

else

      puts "\n\nYou lose!"

end

puts "The Computer chose: #{computer.upcase}\n" #generates computers choice

puts "would you like to play again? y/n"
continue = gets.chomp

end
exit