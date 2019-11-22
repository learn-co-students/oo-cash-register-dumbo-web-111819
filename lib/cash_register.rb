require 'pry'

class CashRegister
  attr_accessor :total, :discount, :last_transaction, :title_array

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title_array = []
    @last_transaction = nil
  end

  def add_item(title, price, quantity = 1)
    self.last_transaction = price * quantity
    #binding.pry
    quantity.times do
      @title_array << title
    end
    @total += price * quantity

  end

  def apply_discount
    if @discount != 0
      @total -= (@discount/100.0 * @total)
      "After the discount, the total comes to $#{@total.to_i}."
    else
    "There is no discount to apply."
    end
  end

  def items
  @title_array
  end

  def void_last_transaction
    @total -= @last_transaction
  end
  #binding.pry
end
