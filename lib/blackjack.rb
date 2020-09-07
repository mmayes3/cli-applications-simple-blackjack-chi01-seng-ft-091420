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
  y = get_user_input
  ir = initial_round
  if y == 'h'
    return current_card_total = deal_card + ir
  elsif y == 's'
    return ir
  else
    invalid_command
    prompt_user
    hit?(initial_round)
  end
end


def runner
  welcome
  initial_round
  prompt_user
  y = prompt_user
  if y == 's'
    prompt_user
  else
    deal_card
    new_total = deal_card + initial_round
    display_card_total(new_total)
    if new_total >= 21
      end_game(new_total)
    end
end
    
