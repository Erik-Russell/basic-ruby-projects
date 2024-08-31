def stock_picker (stocks)
  buy_value = stocks[0] #min_value
  buy_stock_index = 0 #min_index
  global_profit = 0  #max_difference
  sell_stock_index = 1 #greater_number_index
  pair = [] #pair of indexes

  stocks.each_with_index do |current_value, index|
    next if index == 0 #skip first index since we need two numbers to compare
    current_profit = current_value - buy_value 
    if current_profit > global_profit
      global_profit = current_profit
      sell_stock_index = index
      buy_stock_index = stocks.index(buy_value) #track buy value index when we have a change to global_profit
    end
    buy_value = [buy_value, current_value].min #setup next round
    pair = [buy_stock_index,sell_stock_index]
  end
  puts "#{pair}, with a profit of #{global_profit}"
end

#example
stock_picker([17,3,6,9,15,8,6,1,10])

#Testing
test_array_1 = 10.times.map { rand(1..50) }
test_array_2 = 10.times.map { rand(1..50) }
test_array_3 = 10.times.map { rand(1..50) }

stock_picker(test_array_1)
stock_picker(test_array_2)
stock_picker(test_array_3)