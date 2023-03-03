=begin

Problem Statement:

Write a method without using default sort that takes stock_prices and returns the best
profit that I could have made from one purchase and one sale of one share of a stock

stock prices = [10,7,9,8,11,9,8,8,8,8,8,8,16]

should return 9 as the output (because, you could buy at 7 and sell at 16]
BUT you can't buy and sell in the same step...

=end

def best_profit(stock_prices)
  min_price = stock_prices.first # let's assume the first element is the minimum, 10
  max_profit = 0

  stock_prices.each do |price|
    if price < min_price
      min_price = price
    elsif price - min_price > max_profit
      max_profit = price - min_price
    end
  end

  max_profit
end


stock_prices = [10, 7, 9, 8, 11, 9, 8, 8, 8, 8, 8, 8, 16]
p best_profit(stock_prices)

