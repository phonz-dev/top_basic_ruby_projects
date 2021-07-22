def stock_picker(stock_prices)
    profits = Hash.new { |h, k| h[k] = [] }
    stock_prices.each_with_index do |stock_1, day_1|
        stock_prices.each_with_index do |stock_2, day_2|
            if day_2 > day_1 && stock_1 < stock_2
                profit = stock_2 - stock_1
                profits[profit] << [day_1, day_2]
            end
        end
    end
    profits
        .sort_by { |k, v| k }
        .last[1][0]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4] 