def bubble_sort (array)
  length = array.length

  for _ in 1..length do
    swapped = false

    array.each_with_index do |number, index|
      if array.last == number
        break
      end
      if index == array.length
        next
      end
      if number >= array[index+1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swapped = true
      end
    end
    if swapped == false
      break
    end
  end
  p array
end

bubble_sort([5,3,8,6,55,0,1])

#test

# test_array_1 = 50.times.map { rand(1..50) }
# test_array_2 = 10.times.map { rand(1..50) }
# test_array_3 = 10.times.map { rand(1..50) }

# bubble_sort(test_array_1)
# bubble_sort(test_array_2)
# bubble_sort(test_array_3)