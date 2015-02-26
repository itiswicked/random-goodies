=begin 
each value of 'values' represents the price of a stock on a given day.
stock_picker will find the greatest difference between stock prices(max_profit),
but will only compare against indices after what is currently 
being checked (only if the 'buy_day' comes before the 'sell_day').
=end

def stock_picker(values)
	buy_day = 0
	sell_day = 0
	max_profit = 0
	#this iterates each value with its index
	values.each_with_index do |buy_price, b| 
		#for each value, each value after that is iterated
		values[b+1..-1].each_with_index do |sell_price, s|
			if sell_price - buy_price > max_profit #if max_profit could possibly be bigger
				#assign new values to variables
				buy_day = b
				sell_day = s 
				max_profit = sell_price - buy_price
			end
		end
	end
	puts buy_day, sell_day, max_profit
end

values = [17,3,6,9,15,8,6,1,10] #for these inputs the solution is indices 1 and 4, with a profit of 12
stock_picker(values)

