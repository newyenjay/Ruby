to_string function
    40.to_s
    => "40"
to_integer function
    123abc.to_i
    => 123

to_array function
-  convert a list to array
    to_a

[3,55,34].max
    => 55
ticket = [3,55,34]
if you call ticket, it will print out automtically [3,55,34]

ticket.sort! #the exclamation mark overrides the current values
    => [3,34,55]

ticket.sort
    => [3,55,34]
#need the exclamation mark to override the default values assigned

Remember in Ruby, you can join as many methods as you want, just need to join
them by the dot notation.
ex. poem.lines.to_a.reverse
    functions: to_a, reverse
this is called chaining methods

http://ruby-doc.org/core-2.3.1/String.html
really helpful classes for String methods

books = {}
#empty Hash, aka dictionary
# Hashes store related information by giving reusable labels to pieces of our data.

books["SuperFudge"] = :splendid # ":" is called a symbol, Tiny, efficiently reusable code words with a colon
books["Gravity's Rainbow"] = :splendid

books
    => {"Gravity's Rainbow"=>:splendid, "SuperFudge"=>:splendid}

books["Gra­vity's Rainb­ow"]
    => :spledid
#reverse of it, if you forget the rating you added to a book

books.keys
    => ["Gravity's Rainbow", "SuperFudge"]

#Blocks. Chunks of code which can be tacked on to many of Ruby's methods. Here's the code you used to build a scorecard:
books.values.each { |rate| ratings[rate] += 1 }

5.times {prin­t "odel­ya!"}
 =>"odelya!odelya!odelya!odelya!odelya!"


Dir.entries "/" -- Anything listed after a method is considered an 'attachment'.

File.open(­"/Home/com­ics.txt" , "a") do |f|
    #append to the end of File
    ..	f << "Cat and Girl:­ http:­//catandgi­rl.com/"

    console changes to ".." , waiting for input

#to make a method
def load_comics (path)

require 'popup' #library
def load_­comics(pat­h)
..	 comic­s = {}
  File.­foreach(pa­th) do |line­|
    name,­ url = line.­split(': ')
    comic­s[name] = url.s­trip
  end
  comic­s
..	end

File.foreach -- This method opens a file and hands each line of the file to the
block. The line variable inside the do...end block took turns with each line in
the file.

split -- A method for strings which breaks the string up into an array, removing
the piece you pass in. An axe is laid on the colon and the line is chopped in
half, giving us the data to be stored in url and name for each comic.

strip -- This quick method removes extra spaces around the url. Just in case.

#makes a heading size h1
#link that says "go to bing" with hyperlink
Popup.make {
  h1 "My Links"
  link "Go to Bing", "http://bing.com"
}


#make a popup, with a list of things with bulllet points
Popup.make­ do
  h1 "Thin­gs To Do"
  list do
    p "Try out Ruby"­
    p "Ride­ a tiger­"
    p "(dow­n River­ Euphr­ates)"
  end
end


#Use heading
#take the comics.txt file and loop through it
#each time it goes through, take the name and url, and place it in a nice
#format to click on.
Popup.make do
  h1 "Comics on the Web"
  list do
    comics.each do |name, url|
      link name, url
    end
  end
end
