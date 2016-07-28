filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}"
print txt.read

print "-----------------------\n"
print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read
print "------------------------\n"
print txt_again.readline

txt.close()
txt_again.close()
