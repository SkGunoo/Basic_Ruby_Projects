# mplement a method #stock_picker that takes in an array of 
# stock prices, one for each hypothetical day. It should return a 
# pair of days representing the best day to buy and the best 
# day to sell. Days start at 0.


#example
# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

 

#use #times to go through the daily stock price array, except last one
#because you can't sell on the same day you buy 
#create a nested array, one nested array for each day.
#each nested array have 3 elements:
#1:index of selected day 
#2:index of the day you can make highest profit
#3:value of the profit
 
  #use #arr.index(arr.max) on array elements that has higher index than currrently selected one
  #to store index of highest value element as the 
  #second element of the nested array 
    #calculate second elements - first element and store the result as third element

#use #max_by to find the index of nested array has highest 3rd element
#return the first 2 element of that array 


stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_prices)

  best_buying_day = 0 
  best_selling_day = 0 
  maximum_profit = 0 
  arr_size = stock_prices.size - 1

  stock_prices.each_with_index do |stock_price, buying_day|

    #excluding buying day and days before buying days 
    (buying_day + 1..arr_size).each do |selling_day| 

      profit = stock_prices[selling_day] - stock_prices[buying_day]

      #check for the pair of days has highest profit
      if profit > maximum_profit

        maximum_profit = profit
        best_buying_day = buying_day
        best_selling_day = selling_day
      end

    end

  end

  return [best_buying_day,best_selling_day]

end


p stock_picker(stock_prices)