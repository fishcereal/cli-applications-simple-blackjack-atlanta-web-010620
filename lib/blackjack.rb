def welcome
    puts "Welcome to the Blackjack Table"
  end
  
  def deal_card
    return ((rand()*10)+1).to_i
  end
  
  def display_card_total(num) 
    puts "Your cards add up to #{num}"
    
  end
  
  def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  end
  
  def get_user_input
    input = gets.chomp
    return input
  end
  
  def end_game(num)
    puts "Sorry, you hit #{num}. Thanks for playing!"
    
  end
  
  def initial_round
    card_total = 0
    2.times do 
      card_total += deal_card()
    end 
    display_card_total(card_total)
    return card_total
  end
  
  def invalid_command
    puts 'Please enter a valid command'
    # prompt_user()
  end
  
  
  
  def hit?(num)
    prompt_user()
    input = get_user_input()
    if input == 's'
      return num
    elsif input == 'h'
      num+=deal_card()
      return num 
    # elsif input != 's' && input != 'h'
  elsif input == 'k'
    # else 
      invalid_command()
      prompt_user()
      return num
    end
  end


  
  
  #####################################################
  # get every test to pass before coding runner below #
  #####################################################
  
  def runner
    # num = 0 
    # until num > 21 do 
    #   welcome() 
    #   num = initial_round()
    #   hit?(num)
    # end
  end
      
  