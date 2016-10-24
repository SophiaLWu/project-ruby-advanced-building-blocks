# PROJECT 1: BUBBLE SORT

# Sorts an array by comparing each element to the one next to it and
# swapping if the one on the left is larger than the one on the right and
# continuing until the array is sorted
def bubble_sort(arr)
  bubble_sort_by(arr) { |left, right| left - right }
end


# Sorts an array by comparing each element using the block that user
# has provided
def bubble_sort_by(arr)
  swapped = true
  while swapped
    swapped = false
    arr.each_cons(2).with_index do |(left, right), i|
      if yield(left,right) > 0
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end
  end
  arr
end


# Tests
puts bubble_sort([4,3,78,2,0,2]) == [0,2,2,3,4,78]
puts bubble_sort([1,2,3,4,5]) == [1,2,3,4,5]
puts bubble_sort([-5,-6,7,4,0,100]) == [-6,-5,0,4,7,100]
puts (bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end) == ["hi", "hey", "hello"]
puts (bubble_sort_by(["apple","banana","grapes","cherry"]) do |left,right|
  left.length - right.length
end) == ["apple","banana","grapes","cherry"]


