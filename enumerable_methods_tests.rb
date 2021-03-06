require "./enumerable_methods.rb"

# PROJECT 2: ENUMERABLE METHODS
# TESTS
# The following tests should demonstrate that my method implementations 
# should be identical to the Enumerable module method implementations

# ********************* my_each tests *********************
puts "My_each tests start here:"
# Should work for arrays
a1 = [1,2,3,4,5,6]
a1.each { |x| puts x * 2 }        # should have
a1.my_each { |x| puts x * 2 }     # same output

# Should work for hashes
fruits = {"apples": "red", "bananas": "yellow", "kiwis": "green"} 
fruits.each { |fruit, color| puts "#{fruit} are #{color}." }
fruits.my_each { |fruit, color| puts "#{fruit} are #{color}." }


# ********************* my_each_with_index tests *********************
puts "My_index tests start here:"
a2 = ["zero", "one", "two", "three"]
a2.each_with_index { |e, i| puts "#{i}: #{e}" }     # should have
a2.my_each_with_index { |e, i| puts "#{i}: #{e}" }  # same output

vegetables = {"apples": 5, "bananas": 10, "kiwis": 3}
vegetables.each_with_index { |(k,v),i| puts "#{i}: #{v} #{k}" }     # should have
vegetables.my_each_with_index { |(k,v),i| puts "#{i}: #{v} #{k}" }  # same output


# *********************my_select tests *********************
puts "My_select tests start here:"
# Should work for arrays
a3 = [1,2,3,4,5,6,7,8]
puts a3.select { |e| e % 2 == 0 }     # should have
puts a3.my_select { |e| e % 2 == 0 }  # same output

# Should work for hashes
h = {"a" => 100, "b" => 200, "c" => 300}
puts h.select { |k,v| k > "a" } == h.my_select { |k,v| k > "a" }
puts h.select { |k,v| v < 200 } == h.my_select { |k,v| v < 200 }


# ********************* my_all? tests *********************
puts "My_all? tests start here:"
# Should work for arrays
a4 = [2,4,6,8]
puts a4.all? { |e| e % 2 == 0 } == a4.my_all? { |e| e % 2 == 0 }
a5 = [2,4,6,7]
puts a5.all? { |e| e % 2 == 0 } == a5.my_all? { |e| e % 2 == 0 }
a6 = [nil,1,2,3]
puts a6.all? == a6.my_all?

# Should work for hashes
h2 = {"a" => 100, "b" => 200, "c" => 300}
puts h2.all? { |k,v| k > "a" } == h2.my_all? { |k,v| k > "a" }
puts h2.all? { |k,v| v < 400 } == h2.my_all? { |k,v| v < 400 }
puts h2.all? == h2.my_all?
h3 = Hash.new
puts h3.all? == h3.my_all?
puts h3.all? { |k,v| k > "a" } == h3.my_all? { |k,v| k > "a" }


# ********************* my_any? tests *********************
puts "My_any? tests start here:"
# Should work for arrays
a7 = [1,3,7,10]
puts a7.any? { |e| e % 2 == 0 } == a7.my_any? { |e| e % 2 == 0 }
a8 = [1,3,7,9]
puts a8.any? { |e| e % 2 == 0 } == a8.my_any? { |e| e % 2 == 0 }
puts [1,nil,3].any? == [1,nil,3].my_any? # both should return true
puts [nil,nil].any? == [nil,nil].my_any? # both should return false
puts [].any? == [].my_any? # both should return false

# Should work for hashes
h4 = {"a" => 1, "b" => 2, "c" => 3}
puts h4.any? { |k,v| k > "a" } == h4.my_any? { |k,v| k > "a" }
puts h4.any? { |k,v| v > 2 } == h4.my_any? { |k,v| v > 2 }
puts h4.any? == h4.my_any? # both should return true
puts Hash.new.any? == Hash.new.my_any? # both should return false


# ********************* my_none? tests *********************
puts "My_none? tests start here:"
# Should work for arrays
a9 = [1,3,5]
puts a9.none? { |e| e % 2 == 0 } == a9.my_none? { |e| e % 2 == 0 }
puts [].none? == [].my_none?
puts a9.none? == a9.my_none?
puts [].none? { |e| e % 2 == 0 } == [].my_none? { |e| e % 2 == 0 }

# Should work for hashes
h5 = {"a" => 1, "b" => 3, "c" => 5}
puts h5.none? { |k,v| v % 2 == 0 } == h5.my_none? { |k,v| v % 2 == 0 }
puts h5.none? == h5.my_none?
h6 = Hash.new
puts h6.any? == h6.my_any?
puts h6.any? { |k,v| v % 2 == 0 } == h6.my_any? { |k,v| v % 2 == 0 }


# ********************* my_count tests *********************
puts "My_count tests start here:"
# Should work for arrays
a10 = [1,2,3,4,2]
puts a10.count == a10.my_count
puts [].count == [].my_count
puts a10.count(2) == a10.count(2)
puts [].count(2) == [].my_count(2)
puts a10.count { |a| a % 2 == 0 } == a10.my_count { |a| a % 2 == 0 }
puts [].count { |a| a % 2 == 0 } == [].my_count { |a| a % 2 == 0 }


# Should work for hashes
h7 = {"a" => 1, "b" => 2, "c" => 2}
h8 = Hash.new
puts h7.count == h7.my_count
puts h8.count == h8.my_count
puts h7.count { |k,v| v % 2 == 0 } == h7.my_count { |k,v| v % 2 == 0 } 
puts h8.count { |k,v| v % 2 == 0 } == h8.my_count { |k,v| v % 2 == 0 }
puts h7.count(2) == h7.my_count(2)
puts h8.count(-5) == h8.my_count(-5)


# ********************* my_map tests *********************
puts "My_map tests start here:"
# Should work for arrays
a11 = [1,2,3,4,5]
puts [].map
puts [].my_map
puts [].map { |a| a*a } == [].my_map { |a| a*a }
puts a11.map { |a| a*a } == a11.my_map { |a| a*a }

# Should work for hashes
h9 = {"a" => 1, "b" => 2, "c" => 3}
h10 = Hash.new
puts h10.map
puts h10.my_map
puts h9.map { |k,v| [k + "x", v * 2] } == h9.my_map { |k,v| [k + "x", v * 2] }
puts h10.map { |k,v| [k + "x", v * 2] } == h10.my_map { |k,v| [k + "x", v * 2] }


# ********************* my_inject tests *********************
puts "My_inject tests start here:"
# Should work for arrays
a12 = [1,2,3,4,5,6,7,8,9,10]
puts [].inject == [].my_inject
puts [].inject { |sum,n| sum + n } == [].my_inject { |sum,n| sum + n }
puts a12.inject { |sum,n| sum + n } == a12.my_inject { |sum,n| sum + n }
puts [2,4,5].multiply_els == 40


# ********************* my_map_mod tests *********************
puts "My_map_mod tests start here:"
# Should work for arrays
a11 = [1,2,3,4,5]
p1 = Proc.new { |a| a*a }
puts [].map
puts [].my_map_mod
puts [].map { |a| a*a } == [].my_map_mod { |a| a*a }
puts a11.map { |a| a*a } == a11.my_map_mod { |a| a*a }
puts a11.my_map_mod { |a| a*a } == a11.my_map_mod(&p1)
puts [].my_map_mod { |a| a*a } == [].my_map_mod(&p1)

# Should work for hashes
h9 = {"a" => 1, "b" => 2, "c" => 3}
h10 = Hash.new
p2 = Proc.new { |k,v| [k + "x", v * 2] }
puts h10.map
puts h10.my_map_mod
puts h9.map { |k,v| [k + "x", v * 2] } == h9.my_map_mod { |k,v| [k + "x", v * 2] }
puts h10.map { |k,v| [k + "x", v * 2] } == h10.my_map_mod { |k,v| [k + "x", v * 2] }
puts h9.my_map_mod { |k,v| [k + "x", v * 2] } == h9.my_map_mod(&p2)
puts h10.my_map_mod { |k,v| [k + "x", v * 2] } == h10.my_map_mod(&p2)


