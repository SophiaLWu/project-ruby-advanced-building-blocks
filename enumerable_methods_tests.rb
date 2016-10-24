require "./enumerable_methods.rb"

# PROJECT 2: ENUMERABLE METHODS
# TESTS
# The following tests should demonstrate that my method implementations 
# should be identical to the Enumerable module method implementations

#### my_each tests ####
# Should work for arrays
a1 = [1,2,3,4,5,6]
a1.each { |x| puts x * 2 } 
a1.my_each { |x| puts x * 2 } 

# Should work for hashes
fruits = {"apples": "red", "bananas": "yellow", "kiwis": "green"} 
fruits.each { |fruit, color| puts "#{fruit} are #{color}." }
fruits.my_each { |fruit, color| puts "#{fruit} are #{color}." }


#### my_each_with_index tests ####
a2 = ["zero", "one", "two", "three"]
a2.each_with_index { |e, i| puts "#{i}: #{e}" }
a2.my_each_with_index { |e, i| puts "#{i}: #{e}" }


#### my_select tests ####
# Should work for arrays
a3 = [1,2,3,4,5,6,7,8]
puts a3.select { |e| e % 2 == 0 }
puts a3.my_select { |e| e % 2 == 0 }

# Should work for hashes
h = {"a" => 100, "b" => 200, "c" => 300}
puts h.select { |k,v| k > "a" }
puts h.my_select { |k,v| k > "a" }
puts h.select { |k,v| v < 200 }
puts h.my_select { |k,v| v < 200 }