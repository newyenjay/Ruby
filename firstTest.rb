print "What's your name? "
first_name = gets.chomp

print "what's your last name? "
last_name = gets.chomp

print "what city are you from? "
city = gets.chomp

print "what state? "
state = gets.chomp.upcase

puts "Your name is #{first_name} and your last is #{last_name} and you live in #{city}, #{state}"
