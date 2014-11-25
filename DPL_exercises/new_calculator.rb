# new_calculator

class Calculator


  def initialize
  	puts " "
  	puts "---------------------"
  	puts "WELCOME TO CALCULATOR"
  	puts "---------------------"
  	puts " "
  	puts "what would you like to do?"
   puts "1-Add  2-Subtract  3-Multiply 4-Divide  5-Exit "
   @input = gets.chomp.to_i
   validate(@input)
  end


  def validate(input)

   # means to quit
  	if @input == 5
  		puts "thanks for playing Calculator"
  		exit
  	end

   # determines the math function
   if @input == 1 || @input == 2 || @input == 3 || @input == 4
   	puts "Okay, enter in in what you want to do"
   	equasion = gets.chomp.split(/[\+\-\*\/]/)
   	@value1 = equasion[0].to_i
   	@value2 =  equasion[1].to_i

    if @input == 1
    	add
    elsif @input == 2
    	subtract
    elsif @input == 3
    	multiply
    elsif @input == 4
    	divide
    end
   else
   	puts "sorry you must select the secret number that is so obvious"
    exit
   end
  end

 #addition
  def add
   puts "addition"
   total = (@value1) + (@value2)
   puts " ---------"
   puts "| sum = " + total.to_s + " |"
   puts " ---------"
  end

 #subtraction
  def subtract
    puts "subtraction"
    total = (@value1) - (@value2)
    puts " ----------------"
    puts "| remainder = " + total.to_s + " |"
    puts " ----------------"
  end


 #multiplication
  def multiply
  	puts "multiply"
  	total = (@value1) * (@value2)
  	puts " -----------------"
   puts "| product = " + total.to_s + " |"
   puts " -----------------"
  end

 #division
  def divide
  	puts "divide"
  	total = (@value1).to_f / (@value2).to_f
  	puts " ---------------"
   puts "| quotient = " + total.to_s + " |"
   puts " ---------------"
  end
 end
end