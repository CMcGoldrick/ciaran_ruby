# Read about the Ruby `map` method. Then refactor the code below using `map`.
# numbers = [1, 2, 4, 2]
# doubled_numbers = []
# numbers.each do |number|
#   doubled_numbers << number * 2
# end
# p doubled_numbers


# numbers = [1, 2, 4, 2]
# numbers.map! do |a|
#     a * 2
# end

# p numbers

# -------------------------

# Use the `map` method to convert the array of hashes
# ```items = [
#   {id: 1, body: 'foo'},
#   {id: 2, body: 'bar'},
#   {id: 3, body: 'foobar'}
# ]```
# into an array that only contains the ids. The result should look like:
# ```[1, 2, 3]```



# items = [
#   {id: 1, body: 'foo'},
#   {id: 2, body: 'bar'},
#   {id: 3, body: 'foobar'}
# ]

# items.map! do |a|
#   a[:id]
# end

# p items

# ------------------------------

# Use the `map` method with the `to_h` method to convert the array of hashes
# ```fruits = [
#   {"name" => "apple", "color" => "red"},
#   {"name" => "banana", "color" => "yellow"},
#   {"name" => "grape", "color" => "purple"}
# ]```
# into a single hash where the keys are the names and the values are the colors. The result should look like:
# ```{"apple" => "red", "banana" => "yellow", "grape" => "purple"}```


# fruits = [
#   {"name" => "apple", "color" => "red"},
#   {"name" => "banana", "color" => "yellow"},
#   {"name" => "grape", "color" => "purple"}
# ]

# fruits.map! do |fruit|
#   [fruit["name"],fruit["color"]]
# end

# p fruits

# --------------------------------------

# Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!
# ```p reverse_a_string("abcde")  #=> "edcba"```


# def reverse_a_string(input)
#   array = input.split("")
#   length = array.length
#   new_array = []

#   length.times do
#     new_array << array[length - 1]
#     length = length - 1
#   end

#   new_array.join("*")
# end

# p reverse_a_string("shite")



# def reverse_string(input)

#   a = input.split("")
#   r = []
#   index = 0

#   a.each do
#     r.insert(0,a[index])
#     index = index + 1
#   end

#   p r
# end

# reverse_string("hello")

# --------------------------------------

# Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
# ```p find_longest_word("What is the longest word in this phrase?")  #=> "longest"```


# def find_longest_word(sentence)
#  array  = sentence.split
#  new_array = []
 
#  array.each do |x|
#    new_array << x.length
#  end
 
#  new_array.each do |x|
#    if new_array[x] == new_array.max
#      p array[x]
#    end
#  end
# end

# find_longest_word("What is the longest word in this sentence ?")

#       OR

# def find_longest_word(input)
#   array = input.split(" ").sort!.first
# end

# p find_longest_word("hello check out this ahshadhsdh")

# --------------------------------------

# Read about the Ruby `select` method. Then refactor the code below using `select`.
# ```numbers = [1, 2, 4, 2]
# even_numbers = []
# numbers.each do |number|
#   if number.even?
#     even_numbers << number
#   end
# end
# p even_numbers```


# numbers = [1,2,3,4,5]
# p numbers.select { |num| num.even? }

# --------------------------------------

# ```movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]```
# to create a new array of hashes that only contain movies with a rating less than 4.0.


# movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]

# p movies.select { |v| v[:rating] < 4.0 }

# --------------------------------------

# Use the `select` method combined with the `map` method to convert the array of hashes
# ```movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]```
# into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like:
# ```[2, 3]```


# movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]

# p movies.select { |v| v[:title].downcase.include? "b" }.map {|v| v[:id]}

# --------------------------------------

# Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
# ```p palindrome?("racecar")   #=> true
# p palindrome?("wazzzzup")  #=> false```


# def palindrome(word)
#   array = word.split("")
#   reverse_array = []
#   index = array.length

#   array.each do
#     reverse_array << array[index - 1]
#     index -= 1
#   end

#   if array == reverse_array
#     true
#   else
#     false
#   end
# end

# p palindrome("shite")



# def palindrome?(input)
#   a = input.split("")
#   reverse_array = []
#   index = 0

#   a.each do
#     reverse_array.insert(0,a[index])
#     index += 1
#   end

#   if reverse_array == a
#     puts "PALINDROME"
#   else
#     puts "NOLINDROME"
#   end
# end

# palindrome?("shite")

# --------------------------------------

# Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. 
# ```
# p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
# p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]


# def split_array(a,n)
#   fragmented_array = []
#   index = 0
  
#   while index < a.length
#     slide = []

#     n.times do
#       slide << a[index]
#       index = index + 1
#     end

#     fragmented_array << slide
#   end

#   return fragmented_array

#   # p [a[0..n-1], a[n..n+(n-1)], a[2*n..(2*n)+1]]

# end

# p split_array([0, 1, 2, 3, 4, 5], 2)
# p split_array([0, 1, 2, 3, 4, 5,6,7,8], 3)

# --------------------------------------

# Read about the Ruby `reduce` method. Then refactor the code below using `reduce`.
# ```numbers = [1, 2, 4, 2]\nsum = 0
# numbers.each do |number|
#   sum += number
# end
# p sum```


# numbers = [1, 2, 4, 2, 10]

# sum = numbers.reduce(:+)

# p sum

# --------------------------------------

# Write a method called `scrabble_score` which should accept a string as a parameter and return the amount of points it is worth in Scrabble. You can use the following hash to determine how many points each letter is worth:
# ```points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}```
# Use the `reduce` method to perform the computation in your scrabble_score method. The code should work as follows:
# ```p scrabble_score("scholar")  #=> 12```


# def scrabble_score(word)
#   points = {'a'=> 1, 'b'=> 3, 'c'=> 3, 'd'=> 2, 'e'=> 1, 'f'=> 4, 'g'=> 2, 'h'=> 4, 'i'=> 1, 'j'=> 8, 'k'=> 5, 'l'=> 1, 'm'=> 3, 'n'=> 1, 'o'=> 1, 'p'=> 3, 'q'=> 10, 'r'=> 1, 's'=> 1, 't'=> 1, 'u'=> 1, 'v'=> 4, 'w'=> 4, 'x'=> 8, 'y'=> 4, 'z'=> 10}

#   word_array = word.split("")
#   count_array = []
#   index = 0

#   word_array.each do
#     count_array << points[word_array[index]]
#     index = index + 1
#   end

#   count_array.reduce(:+)
# end

# p scrabble_score("qword")

# --------------------------------------

# 99 BOTTLES OF BEER

# n = 99

# 100.times do

#   if n == 1
#     p "1 bottle of beer on the wall, one bottle of beer"
#     p "take one down and pass it around, no more bottles of beer"    
#     puts
#   elsif n == 0
#     p "No more bottles of beer on the wall, no more bottles of beer. "
#     p "Go to the store and buy some more, 99 bottles of beer on the wall."
#   else
#     p "#{n} bottles of beer on the wall, #{n} bottles of beer."
#     p "take one down and pass it around, #{n-1} bottles of beer on the wall"
#   end

#  n -= 1

# end

    # -----------------

# n = 99

# while n > 1 do

#     p "#{n} bottles of beer on the wall, #{n} bottles of beer."
#     p "take one down and pass it around, #{n-1} bottles of beer on the wall"

#   n = n - 1
# end

#     p "1 bottle of beer on the wall, one bottle of beer"
#     p "take one down and pass it around, no more bottles of beer"
#     puts
#     p "No more bottles of beer on the wall, no more bottles of beer. "
#     p "Go to the store and buy some more, 99 bottles of beer on the wall."

# --------------------------------------

# Use the methods `map`, `select`, and `reduce` with the following array of hashes:
# ```items = [
#   {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
#   {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
#   {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
#   {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
#   {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
# ]```
# and calculate the total amount of words for all items of type `:book`. The result should be
# ```3906```


# items = [
#   {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
#   {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
#   {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
#   {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
#   {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
# ]

# p items.select {|x| x[:type] == :book}.map { |x| x[:words] }.reduce(:+)

# --------------------------------------

# Write a method called `mutation?`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
# ```p mutation?("burly", "ruby")    #=> true
# p mutation?("burly", "python")  #=> false```


# def mutation?(word1,word2)
#   one = word1.split("")
#   one_length = one.length
#   two = word2.split("")
#   index = 0

#   two.each do 
#     if (one - [two[index]]).length == one_length
#       return false
#       break
#     else
#       true
#     end
#     index = index + 1
#   end

#   return true

# end

# p mutation?("shite", "shit")

# --------------------------------------

# Write a method called `sum_of_range`, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.
# ```p sum_of_range([1, 4])  #=> 10
# p sum_of_range([4, 1])  #=> 10```


# def sum_of_range(range_array)
#   if range_array[0] > range_array[1] 
#     range_array.reverse!
#     list_array = [*range_array[0]..range_array[1]]
#   else
#     list_array = [*range_array[0]..range_array[1]]
#   end

#   sum = list_array.reduce(:+)
#   return sum
# end

# p sum_of_range([4,2])
# p sum_of_range([1,36])

# --------------------------------------

# Read about the Ruby `sort` method. Then sort the following array of hashes by age. (Note - do not use the `sort_by` method for this exercise)
# ```people = [
#   {"name" => "Saron", "age" => 34},
#   {"name" => "Majora", "age" => 28},
#   {"name" => "Danilo", "age" => 45}
# ]```


# people = [
#   {"name" => "Saron", "age" => 34},
#   {"name" => "Majora", "age" => 28},
#   {"name" => "Danilo", "age" => 45}
# ]

# p people.sort! {|a,b| a["age"]<=>b["age"]}

# --------------------------------------

# Use the `sort` method to sort the array of hashes first by age, then by name.
# ```people = [
#   {name: "bob", age: 15, gender: "male"},
#   {name: "alice", age: 25, gender: "female"},
#   {name: "bob", age: 56, gender: "male"},
#   {name: "dave", age: 45, gender: "male"},
#   {name: "alice", age: 56, gender: "female"},
#   {name: "adam", age: 15, gender: "male"}
# ]```
# The result should be:
# ```[
#   {:name=>"adam", :age=>15, :gender=>"male"},
#   {:name=>"bob", :age=>15, :gender=>"male"},
#   {:name=>"alice", :age=>25, :gender=>"female"},
#   {:name=>"dave", :age=>45, :gender=>"male"},
#   {:name=>"alice", :age=>56, :gender=>"female"},
#   {:name=>"bob", :age=>56, :gender=>"male"}
# ]```


# people = [
#   {name: "bob", age: 15, gender: "male"},
#   {name: "alice", age: 25, gender: "female"},
#   {name: "bob", age: 56, gender: "male"},
#   {name: "dave", age: 45, gender: "male"},
#   {name: "alice", age: 56, gender: "female"},
#   {name: "adam", age: 15, gender: "male"}
# ]

# p people.sort! {|a,b| [a[:age],a[:name]]<=>[b[:age],b[:name]]}

# --------------------------------------

# Use the `sort` and `map` methods to convert the array of hashes
# ```movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]```
# into an array of titles sorted by their ratings highest to lowest. The result should be:
# ```["Bad Boys", "Die Hard", "The Chamber", "Fracture"]```


# movies = [
#   {id: 1, title: "Die Hard", rating: 4.0},
#   {id: 2, title: "Bad Boys", rating: 5.0},
#   {id: 3, title: "The Chamber", rating: 3.0},
#   {id: 4, title: "Fracture", rating: 2.0}
# ]

# movies.sort! {|a,b| b[:rating]<=>a[:rating]}
# movies.map! {|a| a[:title]}

# p movies

# --------------------------------------

# Find the needle by writing one line of code. As an example, if `haystack = [:hay, :needle, :hay]`, you'd pull it out with: `haystack[1]`
# ```haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}```

# haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}

# p haystack[:hay][3][:hay][:hay][1][:hay][2]

# --------------------------------------

# Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.
# ```p find_missing_letter("opqrsuv")  #=> "t"
# p find_missing_letter("xyz")      #=> nil```


# def find_missing_letter(input)
#   input_array = input.split("")
#   all = [*input_array[0]..input_array[2]]
#   net = (all - input_array).join
  
#   if net.length > 0
#     return net
#   else
#     return nil
#   end

# end

# p find_missing_letter("opz")
# p find_missing_letter("xyz")

# --------------------------------------

# Read about the Ruby ternary operator. Then refactor the code below using a ternary operator.
# ```x = 74
# if x > 10
#   result = "big number"
# else
#   result = "small number"
# end
# puts result```


# x = 74
# p result = x > 10 ? "big number" : "small number"

# --------------------------------------

# Use the ternary operator with the `map` method to convert the array of names
# ```sentences = ["hello", "old friend", "today", "mac and cheese"]```
# into a new array of sentences where the first letter is capitalized only if there is more than one word in the sentence. The result should be:
# ```["hello", "Old friend", "today", "Mac and cheese"]```


# sentences = ["hello", "old friend", "today", "mac and cheese"]

# sentences.map { |x| check = (x.include? " ") ? x.capitalize! : x }

# p sentences

# --------------------------------------

# Use the ternary operator with the `reduce` method to find the minimum number in an array of numbers. (Note - do not use the `min` method for this exercise)


# array = [23,5,8,-10,39]

# p array.reduce {|smallest,current| smallest < current ? smallest : current}

# --------------------------------------

# Implement the `is_prime?` method which takes in a number and returns true if the number is prime and false if it is not. (A prime number is a number that is only divisible by itself and the number 1.)
# ```p is_prime?(10)  #=> false
# p is_prime?(11)   #=> true
# p is_prime?(12)   #=> false```


# def is_prime?(num)
#   prime = true
#     if num == 1
#       prime = false
#     end

#   test_num = num - 1

#   ((num-1)-1).times do 
#     if num % test_num == 0
#       prime = false
#       break
#     else
#       prime = true
#     end

#     test_num = test_num - 1
#   end  

#   return prime
# end

# p is_prime?(2)  #=> true
# p is_prime?(5)  #=> true
# p is_prime?(11)   #=> true
# p is_prime?(23)   #=> true
# p is_prime?(199)   #=> true
# p is_prime?(9973)   #=> true
# p is_prime?(35)   #=> false
# p is_prime?(22)   #=> false
# p is_prime?(33)   #=> false
# p is_prime?(1)   #=> false

# --------------------------------------

# Write a method called `find_the_most_letter_a` which takes in an array of strings and returns the string with the most a’s.
# ```p find_the_most_letter_a(["alphabet", "aardvark", "anarchy])  #=> "aardvark"```


# def find_most_letter_a(array)
#   index = 0
#   counter = 0
#   count_array = []
#   n = array[index].length

#   array.each do
#     jdex = 0

#     n.times do
#       array[index][jdex]
#       if array[index][jdex] == "a"
#         counter += 1
#       end
#       jdex +=1
#     end
    
#     count_array << counter
#     counter = 0
#     index += 1
#   end

#   most_a_index = count_array.each_with_index.max[1]

#   return array[most_a_index]

# end

# p find_most_letter_a(["alphabet", "aardvark", "aaaaaaasasdbaa","anarchy"])

# --------------------------------------

# Read about regular expressions. Then use the `gsub` method to replace all the numerical digits in the following string with an underscore.
# ```address = "665 Clinton Lane, Wilkes Barre, PA 18702"```
# The result should be:
# ```"___ Clinton Lane, Wilkes Barre, PA _____"```


# p address = "665 Clinton Lane, Wilkes Barre, PA 18702".gsub(/[1234567890]/, '_')

# --------------------------------------

# Use the `scan` method with a regular expression to find every word in the following sentence that has 4 letters and starts with the letter "l" and ends with the letter "e".
# ```sentence = "You can live like a king but make sure it isn't a lie."```
# The result should be:
# ```["live", "like"]```


# sentence = "You can live like a king but make sure it isn't a lie."

# p sentence.scan(/[l]..[e]/)

# --------------------------------------

# Use the `gsub` method with a regular expression to replace every word in the following sentence that starts with the letter "l" with the word "fake".
# ```sentence = "You can live like a king but make sure it isn't a lie."```
# The result should be:
# ```"You can fake fake a king but make sure it isn't a fake."```


# sentence = "You can live like a king but make sure it isn't a lie."

# p sentence.gsub(/\l\w+/, 'fake')

# --------------------------------------

# Implement the highest_prime_number_under method below. It should accept a number as an argument and return the highest prime number under that number. For example, the highest prime number under 10 is 7.


# def highest_prime_number(num)
#   prime = true

#   num_below = num - 1
#   test_num = num_below - 1
#   test_array = []

#   (num-2).times do
#     (num_below-2).times do
#       if num_below % test_num == 0      
#         # prime = false
#         test_array << "f"
#       else
#         # prime = true
#         test_array << "t"
#       end

#       test_num = test_num - 1

#     end
      
#       if test_array.include?("f")
#         prime = false
#       else
#         break
#       end

#     test_array = []
#     num_below = num_below - 1
#     test_num = num_below - 1
#   end

#   return num_below
# end

# p highest_prime_number(10)  #=> 7
# p highest_prime_number(11)  #=> 7
# p highest_prime_number(12)  #=> 11
# p highest_prime_number(100)  #=> 11

# --------------------------------------

# Write a method called `is_balanced?` that takes a string of brackets and checks whether they are balanced or not.
# ```p is_balanced?("{[()]}") #=> true
# p is_balanced?("{[([)]]}") #=> false```


# def is_balanced?(array)
#   split_array = array.split("")

#   n = split_array.length / 2

#   start = 0
#   ending = split_array.length - 1

#   curly = ["{}"]
#   parentheses = ["()"]
#   brackets = ["[]"]

#   test_array = []

#   n.times do
#     test_array << split_array[start] + split_array[ending]

#     if test_array == curly
#       return true
#     elsif test_array == parentheses
#       return true
#     elsif test_array == brackets
#       return true
#     else
#       return false
#     end

#     test_array = []
#     start = start + 1
#     ending = ending - 1
#   end
# end
# p is_balanced?("{[([()])]}") #=> true
# p is_balanced?("[([)]]}") #=> false

# --------------------------------------

# ```var array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];```
# Use a Ruby for loop within a for loop to take each of those letters and put them into a brand new one dimensional array. The result should be:
# ```["a", "b", "z", "c", "d", "e", "f", "g", "h", "i", "j"]```

  #   # for/each/times loop - # TRY MAP METHOD!


  # array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];

  # index = 0
  # new_array = []

  # for x in array
  #   for i in array[index]
  #     new_array << i
  #   end
  #   index += 1
  # end

  # p new_array
  

  # index = 0
  # jdex = 0
  # new_array = []
  # n = array.length

  # array.each do
  #   (array[index].length).times do 
  #     new_array << array[index][jdex]
  #     jdex = jdex + 1
  #   end
  #   jdex = 0
  #   index = index + 1
  # end

  # p new_array

# --------------------------------------































