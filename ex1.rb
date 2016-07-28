
cars = 100
space_in_a_car = 4.0

puts "Hello World!"
puts "Hello there"
#puts "I like typing here"
puts "this is a weird print function"
puts "I guess it works, can i format this?"
puts "Hens #{3+6/3*7}"
puts 3+4+5+6+3+4+5
puts "Is this greater? #{3>5}"
puts "Is this greater? #{false}"

my_name = 'jennifer'
age = 22
weight = 114.1
eq = weight - age

puts "There are #{cars} cars available."
puts cars - space_in_a_car
#puts "cars-space_in_car"

puts "My name is #{my_name}"
puts "I am #{age}"
puts "i am testing out this, #{eq + age + age}"


binary = 001
do_not = "nope."
x = "This is a string, random #{age}"
y = "Those who know #{binary} and those who #{do_not}."
puts x
puts y

puts "I also said: '#{y}'."

w = "This is the left side"
e = "This is the right side "

puts w +" " + e

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

print end1 + end2 + end3 + end4 + end5 + end6 + "\n"
#puts end7 + end8 + end9 + end10 + end11 + end12

puts "." * 5  # what'd that do?
formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter %{first: 1, second: 2, third: 3, fourth: 4}
puts formatter %{first: "one", second: "two", third: "three", fourth: "fourth"}
puts formatter %{first: true, second: false, third: true, fourth: false}
puts formatter %{first: formatter, second: formatter, third: formatter,fourth:formatter}

puts formatter %{
    first: "I had this thing.",
    second: "That you could type up right",
    third: "But you didn't sing",
    fourth: "Goodnight"
}
