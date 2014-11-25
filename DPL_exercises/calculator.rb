#this is a calculator psuedo code

puts "welcome to calculator"
puts "~~~~~~~~~~~~~~~~~~~~~"
puts "enter the first number you'd like to use"
puts "note: you must hit return after each value(sorry)"

perator = [:+,:-,:*]
input_1 = gets.chop

puts "now select the operator you would like to use"
puts "on of these '+' '-' '*' '/'"

operator_value = gets.chomp.to_s

puts "now enter the second nuber"
input_2 = gets.chomp

if operator_value == "+"
  first = input_1.to_i
  second = input_2.to_i

  total = ((first) + (second)).to_s
  puts "equals " + total

elsif operator_value == "-"
  first = input_1.to_i
  second = input_2.to_i

  total = ((first) - (second)).to_s
  puts "equals " + total

elsif operator_value == "*"
  first = input_1.to_i
  second = input_2.to_i

  total = ((first) * (second)).to_s

  puts "equals " + total

elsif operator_value == "/"
  first = input_1.to_f
  second = input_2.to_f

  total = ((first) / (second)).to_s

  puts "equals " + total

else
  puts "sorry please input one of the operators"

end


#set the conditions


#allow for inputs


#we need to decide what function we want to use




