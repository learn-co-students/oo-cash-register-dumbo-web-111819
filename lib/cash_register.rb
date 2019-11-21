require 'pry'

class CashRegister

  attr_reader :discount
  attr_accessor :total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction_price
    @last_transaction_quantitiy
  end


  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times { @items << title }
    @last_transaction_price = price
    @last_transaction_quantitiy = quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{ @total -= @total * @discount/100 }."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    # binding.pry
    @items.pop
    @total -= @last_transaction_price * @last_transaction_quantitiy
  end

end # class CashRegister