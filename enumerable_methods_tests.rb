require "./enumerable_methods.rb"

# PROJECT 2: ENUMERABLE METHODS
# TESTS
# The following tests should demonstrate that my method implementations 
# should be identical to the Enumerable module method implementations

# ********************* my_each tests *********************
# Should work for arrays
a1 = [1,2,3,4,5,6]
a1.each { |x| puts x * 2 }        # should have
a1.my_each { |x| puts x * 2 }     # same output

# Should work for hashes
fruits = {"apples": "red", "bananas": "yellow", "kiwis": "green"} 
fruits.each { |fruit, color| puts "#{fruit} are #{color}." }
fruits.my_each { |fruit, color| puts "#{fruit} are #{color}." }


# ********************* my_each_with_index tests *********************
a2 = ["zero", "one", "two", "three"]
a2.each_with_index { |e, i| puts "#{i}: #{e}" }     # should have
a2.my_each_with_index { |e, i| puts "#{i}: #{e}" }  # same output


# *********************my_select tests *********************
# Should work for arrays
a3 = [1,2,3,4,5,6,7,8]
puts a3.select { |e| e % 2 == 0 }     # should have
puts a3.my_select { |e| e % 2 == 0 }  # same output

# Should work for hashes
h = {"a" => 100, "b" => 200, "c" => 300}
puts h.select { |k,v| k > "a" } == h.my_select { |k,v| k > "a" }  # should be true
puts h.select { |k,v| v < 200 } == h.my_select { |k,v| v < 200 }  # should be true


# ********************* my_all? tests *********************
# Should work for arrays
a4 = [2,4,6,8]
puts a4.all? { |e| e % 2 == 0 } == a4.my_all? { |e| e % 2 == 0 }  # should be true
a5 = [2,4,6,7]
puts a5.all? { |e| e % 2 == 0 } == a5.my_all? { |e| e % 2 == 0 }  # should be true
a6 = [nil,1,2,3]
puts a6.all? == a6.my_all?  # should be true

# Should work for hashes
h2 = {"a" => 100, "b" => 200, "c" => 300}
puts h2.all? { |k,v| k > "a" } == h2.my_all? { |k,v| k > "a" }  # should be true
puts h2.all? { |k,v| v < 400 } == h2.my_all? { |k,v| v < 400 }  # should be true
h3 = {}
puts h3.all? == a3.my_all?  # should be true

