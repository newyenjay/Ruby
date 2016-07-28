#take input while giving arguments to compiler
#same example as ex3.rb
print "Give me some money: "
change = $stdin.gets.chomp.to_f #helps take in input IF you have ARGS values
change = change * 0.1
change = change.round(2)

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is #{second}"
puts "Your third variable is #{third}"
puts change
