# rock paper scissors

  puts "      Welcome to Rock Paper cissors"

  #set # of Games to play
  puts "enter how many rounds you would like to play? "
  number_of_games = gets

  puts " computer: OK Lets play"
  puts "choose your option, I'm alredy thinking of mine"

  total_games = 0
  your_score = 0
  computer_score = 0
  number_of_ties = 0

while total_games < number_of_games.to_i

  options = ["rock","paper","scissors"]
  my_choice = gets.chomp
  computer_choice = options.sample

  if my_choice == options[0].downcase || my_choice == options[1].downcase || my_choice == options[2].downcase

  	puts "you did " + my_choice
  	puts "computer did " + computer_choice
  	total_games += 1

    #its a Tie
  	if my_choice == computer_choice
  		puts "-It's a Tie-"
  		puts " "
      number_of_ties += 1

    #You win
  	elsif  my_choice == "rock" && computer_choice == "scissors" || my_choice == "paper" && computer_choice == "rock" ||  my_choice == "scissors" && computer_choice == "paper"
  		  puts "-you won that round-"
  		  puts " "
  		  your_score += 1

    #Computer Wins
  	else
  	  puts "-you lost that round-"
  	  puts " "
  	  computer_score += 1
  	end

  #No Game, invalid option
  else
  	puts "please choose \"rock\", \"paper\" or \"scissors\" to play"
  	puts "try again"
  end
end

"**************************"
#Final score and result
puts "final score"
puts "your score - " + your_score.to_s
puts "computer score - " + computer_score.to_s
puts " "

if your_score > computer_score
	puts "You Win!!!"
elsif your_score < computer_score
	puts "You Lose!!"
else
	puts "It's a Tie"
	puts " "
end