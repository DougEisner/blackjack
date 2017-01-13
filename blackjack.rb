# # Week1, HW3, Blackjack
#
#
#
hard = {
  5	  => ['H', 'H',	'H', 'H',	'H',	'H',	'H',	'H',	'H',	'H'],
  6	  => ['H', 'H',	'H',	'H',	'H',	'H',	'H',	'H',	'H',	'H'],
  7	  => ['H',	'H',	'H',	'H',	'H',	'H',	'H',	'H',	'H',	'H'],
  8	  => ['H',	'H',	'H',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  9	  => ['Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H', 'H'],
  10  => ['Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'H',	'H'],
  11  => ['Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'Dh'],
  12	=> ['H',	'H',	'S',	'S',	'S',	'H',	'H',	'H',	'H',	'H'],
  13	=> ['S',	'S',	'S',	'S',	'S',	'H',	'H',	'H',	'H',	'H'],
  14	=> ['S',	'S',	'S',	'S',	'S',	'H',	'H',	'H',	'H',	'H'],
  15	=> ['S',	'S',	'S',	'S',	'S',	'H',	'H',	'H',	'H',	'H'],
  16	=> ['S',	'S',	'S',	'S',	'S',	'H',	'H',	'H',	'H',	'H'],
  17	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
  18	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
  19	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
  20	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
  21	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
}

soft = {
  13	=> ['H',	'H',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  14	=> ['H',	'H',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  15	=> ['H',	'H',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  16	=> ['H',	'H',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  17	=> ['H',	'H',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  18	=> ['Dh',	'Dh',	'Dh',	'Dh',	'Dh',	'H',	'H',	'H',	'H',	'H'],
  19	=> ['S',	'S',	'S',	'S',	'Ds',	'S',	'S',	'S',	'S',	'S'],
  20	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
  21	=> ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
}

pair = {
  2	 => ['P',	'P',	'P',	'P',	'P',	'P', 'H',	'H',	'H',	'H'],
  3	 => ['P',	'P',	'P',	'P',	'P',	'P',	'P', 'H',	'H',	'H'],
  4	 => ['H',	'H',	'P',	'P',	'P',	'H',	'H',	'H',	'H',	'H'],
  5	 => ['Dh',	'Dh',	'Dh',	'Dh', 'Dh',	'Dh',	'Dh',	'Dh',	'H',	'H'],
  6	 => ['P',	'P',	'P',	'P',	'P',	'P',	'H',	'H',	'H',	'H'],
  7  => ['P',	'P',	'P',	'P',	'P',	'P',	'P',	'H',	'S',	'H'],
  8  => ['P',	'P',	'P',	'P',	'P',	'P',	'P',	'P',	'P',	'P'],
  9	 => ['P',	'P',	'P',	'P',	'P',	'S',	'P',	'P',	'S',	'S'],
  10 => ['S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S',	'S'],
  11 => ['P',	'P',	'P',	'P',	'P',	'P',	'P',	'P',	'P',	'P'],
}

move_interpreter = {
  'H'	 => 'Hit',
  'S'	 => 'Stand',
  'P'  => 'Split',
  'Dh' => 'Double if possible, otherwise Hit',
  'Ds' => 'Double if possible, otherwise Stand'
}

def change_card_to_number(card)
  if card == 'j' || card == 'q' || card == 'k'
    card = '10'
  elsif card == 'a'
    card = '11'
  else
    card = card
  end
end


def pick_optimal_move (card1, card2, dealer_index_value, table)
  key = card1 + card2
  row_to_search = table[key]
  optimal_move = row_to_search[dealer_index_value]
end


def pick_the_table (card1, card2, dealer_card)
  if card1 == card2
    table = "pair"
  elsif card1 == "a"
    table = "soft"
  elsif card2 == "a"
    table = "soft"
  else
    table = "hard"
  end
end

dealers_index = {
  2  => '0',
  3  => '1',
  4  => '2',
  5  => '3',
  6  => '4',
  7  => '5',
  8  => '6',
  9  => '7',
  10 => '8',
  11 => '9',
}

############# PROGRAM BODY ###############

puts "Please enter your first card:"
  card1 = gets.chomp

puts "Please enter your second card:"
  card2 = gets.chomp

puts "Please enter the dealer's card:"
  dealer_card = gets.chomp

#Determine which table b/f converting A > 11 and K, Q and J >10
table = pick_the_table(card1, card2, dealer_card)
puts "table = " + table


#convert face cards to numbers
card1 = change_card_to_number(card1)
card2 = change_card_to_number(card2)
dealer_card = change_card_to_number(dealer_card)

# puts "card1 = " + card1 + card1.class
# puts 'card2 = ' + card2 + card2.class
# puts 'dealer_card = ' + dealer_card + dealer_card.class

dealer_index_value = dealers_index[dealer_card]
puts dealer_index_value

move = pick_optimal_move(card1, card2, dealer_card, table)
puts "The best move is:  " + move_interpreter(pick_optimal_move)






#puts "Your optimal move is #{optimal_move}"
