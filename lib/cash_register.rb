require 'pry'

class CashRegister

attr_accessor :total, :discount, :last_price, :items

@last_item = []
@last_price

def initialize(discount= 0)
	@total = 0
	@discount = discount
	@items = []
end

def total
 @total
end

def add_item(item, price, quantity =1)
	@last_price = price * quantity
	@total += @last_price
	quantity.times {@items << item}
end

def apply_discount
	return "There is no discount to apply." if @discount.zero?
	@total = @total - (@discount.to_f/100) * @total
	 "After the discount, the total comes to $#{@total.to_i}."
 end

 def void_last_transaction
 	@total = @total - @last_price
 end
end
