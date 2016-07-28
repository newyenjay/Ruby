# print "Give me a number: "
# number = gets.chomp.to_i
#
# bigger = number * 100
# puts "A bigger number is #{bigger}"
#
# print "Give me anotehr number: "
# another = gets.chomp
# number = another.to_i
#
# smaller = number / 100
# puts "A smaller number is #{smaller}"

# print "Float number: "
# floatnum = gets.chomp.to_f
#
# print "float number converted: #{floatnum}\n"

print "Give me some money: "
change = gets.chomp.to_f
change = change * 0.1
change = change.round(1)

print "#{change} \n"
