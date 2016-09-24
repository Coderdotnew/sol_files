# your code here
class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do 
      @items << title 
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100 - @discount) / 100
      # @total = @total - @total * @discount / 100
      "The total after the discount applied is $#{@total}."
    else
      "You have no discounts available."
    end
  end

end