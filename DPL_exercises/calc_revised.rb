#this is a calculator psuedo code

puts " "
puts "welcome to calculator"
puts "~~~~~~~~~~~~~~~~~~~~~"
puts "enter your input with spaces between the values and operator"
puts "type 'quit' to exit"

@input_1 = gets.chomp

while @input != "quit"
  @input_1 = gets.chomp
  input_cache =  @input_1.split.to_a

  operator_value = input_cache[1]
  first_player_choice = input_cache[0].to_i
  second_player_choice = input_cache[2].to_i


  if operator_value == "+"
    total = ((first_player_choice) + (second_player_choice)).to_s
    puts "equals " + total

  elsif operator_value == "-"
    total = ((first_player_choice) - (second_player_choice)).to_s
    puts "equals " + total

  elsif operator_value == "*"

    total = ((first_player_choice) * (second_player_choice)).to_s
    puts "equals " + total

  elsif operator_value == "/"
    div_1 = first_player_choice.to_f
    div_2 = second_player_choice.to_f

    total = ((div_1) / (div_2)).to_s
    puts "equals " + total

  else
    puts "sorry please input one of the 4 main operators"

  end
end


#set the conditions


#allow for inputs


#we need to decide what function we want to use




