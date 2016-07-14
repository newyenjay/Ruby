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


--------------------------------------------------------
Code School
--------------------------------------------------------
Learning CRUD for RoR

Create a Tweet
Regular                                             Recipe
t = Tweet.new                                       t = TableName.new
t.status = "I <3 brains"                            t.key = value
t.save                                              t.save

Alternate
t = Tweet.new(
    status = "I <3 brains",
    zombie = "Jim"
)
t.save

t.create(status: "I <3 brains", zombie: "Jim")


Read a Tweet
Tweet.count
=> returns total number of tweets

Tweet.order(:zombie)
=> Return all tweets, ordered by zombies

Tweet.limit(10)
=> Return the first 10 tweets

Tweet.where(zombie: "Ash")
=> Return all tweets by Ash

Method chaining
#Can string multiple methods together
Tweet.where(zombie: "Jim").order(:status).limit(10)
=> Get tweets from the zombie named Jim, order it by status and grab only the first 10

Tweet.where(zombie: "ash").first
=> Get tweets only from zombie name ash, and only get the most recent one

Zombie.order(:names)
=> From the zombie table, get all zombies and order by name
SELECT * FROM ZOMBIES
ORDER BY name


Update a tweet
Regular                                             Recipe
t = Tweet.find(1)                                   t = TableName.find(id)
t.zombie = "EyeBallChomper"                         t.key = value
t.save                                              t.save

Alternate Syntax                                    Recipe
t = Tweet.find(2)
t.attributes{                                       t = TableName.find(id)
    status: "Can I have your eyeballs?",            t.attributes = hash
    zombie: "EyeBallChomper"                        t.save
}
t.save

Alternate (even shorter)                            Recipe
t = Tweet.find(2)
t.update(
    status: "Can I have your eyeballs?",            t = TableName.update(hash)
    zombie: "EyeBallChomper"
)


Delete a Tweet                                      Recipe
t = Tweet.find(2)                                   t = TableName.find(id)
t.destroy                                           t.destroy

Alternate
t = Tweet.find(2).destroy

Delete all tweets
t = Tweet.destroy_all                               TableName.destroy_all


==================================================================================
Lesson 2: Modals

Methods that can be used to validate inside the function classes

validates_presence_of
validates_numericality_of
validates_uniqueness_of
validates_confirmation_of :password #checks password confirmations
validates_acceptance_of #checks to see if it follows all rules
validates_length_of :password, minimum: 3
validates_format_of :email, with:/regex/i
validates_inclusion_of :age, in: 21..99
validates_exclusion_of :age, in: 0..21, message: "Sorry, you must be over 21"

Define a zombie model:

class Zombie < ActiveRecord::Base

end
-----------------------------------
Add a validation that checks for the presence of a Zombie;s name

class Zombie < ActiveRecord::Base
  validates_presence_of :name
end

-------------------------------------
Add a validation that checks for the uniqueness of a Zombie;s name.

class Zombie < ActiveRecord::Base
  # insert validation here
  validates_uniqueness_of :name
end

-------------------------------------
Validate both the uniqueness and the presence of a Zombie;s name on a single line,
using the new validation syntax.

class Zombie < ActiveRecord::Base
  # insert validation here
  validates :name, presence: true, uniqueness: true
end
-------------------------------------
A Weapon belongs to a Zombie. Create that relationship.

class Weapon < ActiveRecord::Base
    belongs_to :zombie
end
-------------------------------------
Assuming the models and relationships are properly defined, find all the weapons
that belong to Zombie 'Ashley'.

Zombie.find(1).weapons
#<ActiveRecord::Associations::CollectionProxy [#<Weapon id: 1, name: "Hammer", strength: 1, zombie_id: 1>]>
Successfully found all of Ashleys weapons.

================================================================================
View code for Ruby

* ends in .erb
* example: index.html.erb

<% tweet = Tweet.find(1) %> #Evaluate Ruby
<h1> <%= tweet.status %> #Evaluate and print result
<p> Posted by: <%= tweet.zombie.name %></p>

Looping through tweets
<% Tweet.all.each do |tweet| %>
    <tr>
        <td><%= tweet.status %></td>
        <td><%= tweet.zombie.name %></td>
    </tr>
<% end>

#What is there is an empty table for the tweets?

<% tweets = Tweet.all %>
<% tweets.each do |tweet| %>
    ...
<% end %>

<% if tweets.size == 0 %>
    <em> No tweets found </em>
<% end %>

URL generator methods
Action                  Code                URL path
List all tweets         tweets_path         /tweets
New tweet from          new_tweet_path      /tweets/new

*Tweet.find(1)
Show a tweet            tweet               /tweet/1
Edit a tweet            tweet_edit_path(tweet)  /tweet/edit/1
Delete                  tweet, method: :delete  /tweet/edit

Linking in blocks
In the each block, make the zombie's name link to its edit page.

<% zombies = Zombie.all %>
<ul>
  <% zombies.each do |zombie| %>
    <li>
      <%= link_to zombie.name, edit_zombie_path(zombie) %>
    </li>
  <% end %>
</ul>
