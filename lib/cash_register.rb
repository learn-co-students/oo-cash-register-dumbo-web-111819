require 'pry'
class CashRegister 
    attr_accessor :total, :last_transaction
    attr_reader :discount 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @item_array = []

    end #end of initialize method

    def add_item(title, price, quantity=1)
        #accepts a title and a price and increase the total 
        @total += price * quantity
        quantity.times do 
            @item_array << title
        end
        self.last_transaction = price*quantity

    end #end of add_item method

    def apply_discount 
        if @discount != 0 
            @total -= @total * @discount/100.0
            #binding.pry
            "After the discount, the total comes to $#{@total.to_i}."
        else 
            "There is no discount to apply."
        end
    end #end of apply_discount

    def items
        @item_array 
        #binding.pry
    end

    def void_last_transaction
        #binding.pry
        self.total -= self.last_transaction
        #binding.pry
    end

end #end of class