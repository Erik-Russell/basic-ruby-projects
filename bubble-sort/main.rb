def bubble_sort (array)
  array.each_with_index do |number, index|
    if array.last == number
      puts "break"
      break
    end
    puts "start of #{index} loop"
    if index == array.length
      puts "length #{array.length}"
      next
    end
    if number > array[index+1]
      puts "swap #{number} for #{array[index+1]}"
      array[index], array[index + 1] = array[index + 1], array[index]
    end
  end
end

puts bubble_sort([5,3,8,6,55,0,1])