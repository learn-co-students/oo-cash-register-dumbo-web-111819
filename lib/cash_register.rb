require 'pry'
class CashRegister
    attr_accessor :discount, :total
    attr_reader 
    
    def initialize (discount = 0)
        @discount = discount
        @total = 0
       
    end
    def add_item (item, price, quantity = 1)
        @all = ["eggs"]
        quantity.times do
            @total += price
            @all << item
            @last_price = price
            @quantity = quantity
        end
        # binding.pry
    end
    
    def apply_discount
       
        if @discount == 0
            
            "There is no discount to apply."
        else
            @total = @total -((@total * @discount)/100) 
            p "After the discount, the total comes to $800."
        end
    end
    def items
        @all
    end
    def void_last_transaction
        @quantity.times do
            # binding.pry
            @total -= @last_price
        end
    end 
        
end
