require "./enumerable_methods.rb"

# PROJECT 2: ENUMERABLE METHODS
# TESTS
# The following tests should demonstrate that my method implementations 
# should be identical to the Enumerable module method implementations

#### my_each tests ####
# Should work for arrays
a = [1,2,3,4,5,6]
a.each { |x| puts x * 2 } 
a.my_each { |x| puts x * 2 } 

# Should work for hashes
fruits = {"apples": "red", "bananas": "yellow", "kiwis": "green"} 
fruits.each { |fruit, color| puts "#{fruit} are #{color}." }
fruits.my_each { |fruit, color| puts "#{fruit} are #{color}." }


#### my_each_with_index tests ####
a = ["zero", "one", "two", "three"]
a.each_with_index { |e, i| puts "#{i}: #{e}" }
a.my_each_with_index { |e, i| puts "#{i}: #{e}" }