# RESEARCH AND NOTES
# found Kadane Algorithm for finding the max sum of a subarray,
# I think this could be a really good starting point

# https://github.com/kumar91gopi/Algorithms-and-Data-Structures-in-Ruby/blob/master/arrays/MaxDiffLargerOnRight.rb
# ^^^^ this is an example written in ruby, but it only finds the maximum sum

# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

#     You need to buy before you can sell
#     Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.



### my thoughts
# set each number in array as a value in a hash with each values key being its index + 1
# scan through all numbers
# -> if the smallest number is the last number, ignore it
# using each number except for the last number, calc the difference between it and every other number and keep the largest diff
# --> only compare numbers with a greater index
# compare each numbers larget individual differences and find the largest difference
# return an array of pairs indexes

stocks = [8,17,3,6,9,15,8,6,1,10]

buy_value = stocks[0] #min_value
buy_stock_index = 0 #min_index
profit = 0  #max_difference
buy_and_sell = [] #pair
sell_stock_index = 1 #greater_number_index

stocks.each_with_index do |current_value, index|
  next if index == 0 # Skip the first element since it's already assigned to buy_value

  puts "cv: #{current_value} - bs: #{buy_value}"

  # Calculate the difference between the current value and the minimum value seen so far
  difference = current_value - buy_value
  puts "diff: #{difference} :: profit: #{profit}"

  # If the current difference is greater than the maximum difference found so far, update the maximum difference and buy_and_sell
  if difference > profit
    profit = difference
    buy_and_sell = [buy_value, current_value]
    sell_stock_index = index + 1
    puts "buy and sell: #{buy_and_sell}"
    buy_stock_index = stocks.index(buy_value) + 1
  end
  puts "sell_stock_index: #{sell_stock_index}"
  

  # Update the minimum value seen so far if the current value is less than the minimum value
  buy_value = [buy_value, current_value].min
  puts "buy index: #{buy_stock_index}"
  puts "current buy stock: #{buy_value}"
  puts
end

puts "Pair with the greatest difference: #{buy_and_sell}"
puts 
puts "Profit: #{profit}"