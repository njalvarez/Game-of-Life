CARD_VALUES = %W[2 3 4 5 6 7 8 9 J Q K A]
SUIT_VALUES = %W[clubs diamons hearts spades]

def draw_card()
  {
    suit: SUIT_VALUES.sample
    value: CARD_VALUES.sample
  }
  break if result != compare
end
result
end

def card_scor(player_param)
  "#{CARD_VALUES.index(player_param[:value])}.#{SUIT_VALUES.index(player_param[:suit])}".to_f
end

player = draw_card()
computer = draw_card(player)

player_score = card_score(player)
computer_score = card_score(computer)

puts "#{player}: #{player_score}"
puts "#{computer}: #{computer_score}"

if player_score > computer_score
  puts "Player Wins!"
elsif player_score < computer_score
  puts "Computer Wins!"
else
  puts "Its a Tie"
end