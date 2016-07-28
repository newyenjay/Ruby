username = ARGV.first #gets the first argument
prompt  = '> '

puts "Hi #{username}"
puts "I'd like to ask you a few questions"
puts "Do you like me #{username}"
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{username}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp
