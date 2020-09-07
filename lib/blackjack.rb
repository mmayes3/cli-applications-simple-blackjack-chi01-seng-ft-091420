def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand(1..11)
  return random
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  c1 = deal_card
  c2 = deal_card
  sum = c1 + c2
  display_card_total(sum)
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(initial_round)
  prompt_user
  ir = initial_round
  y = get_user_input
  if y == 'h'
    return current_card_total = deal_card + ir
  elsif y == 's'
    return ir
  else
    invalid_command
    hit?(ir)
  end
end


def runner
  welcome
  ct = initial_round
  prompt_user
  g = get_user_input
  if g == 's'
    prompt_user
  end
  until ct > 21
    ct = hit?(ct)
    display_card_total(ct)
  end
  end_game(ct)
end
    
