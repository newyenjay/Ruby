filename = ARGV.first

puts "We're going to erase #{filename}"

$stdin.gets

puts "Opening file..."
target = open(filename, 'w')
print filename.read


puts "Truncating file!"
target.truncate(0)

puts "Now i'm going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp

print "line 2: "
line2 = $stdin.gets.chomp

print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm gonna add these 3 lines"

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")


puts "For common courtesy, we close it"
target.close
