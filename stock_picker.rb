def stock_picker(stocks_array)
    k = 0
    buy_sell = []
    while k < stocks_array.length
        stocks_array.each_with_index do |stock, i|
            buy_sell << [stocks_array[k], stocks_array[i]] if i > k
        end
        k += 1
    end
    largest_difference(buy_sell)
end

def largest_difference(array)
    best_pair = [0, 0] 
    array.each do |pairs|
        difference = best_pair.last - best_pair.first
        buy, sell = pairs
        best_pair = [buy, sell] if sell - buy > difference
    end
    best_pair
end 

# p stock_picker([17,3,6,9,15,8,6,1,10])