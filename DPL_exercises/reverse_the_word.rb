#reverse_the_word
puts "type a word and i'll try to reverse it for you"
puts " "

def reverse
  variable = gets.chomp

  array = variable.split("")
  size = variable.length

  @reversed = []

  size.times do |i|
   	letter = array.pop
    @reversed<<[letter]
  end
   puts "your word/phrase reversed is " + @reversed.join.to_s
end
