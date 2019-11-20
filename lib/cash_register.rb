require 'pry'
class CashRegister

    attr_accessor :total, :last_transaction
    attr_reader :discount
    
    
    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
    end
    


    def add_item(title,price,quantity=nil)
        @last_transaction = [title,price,quantity]
        if quantity
            @total += price *quantity
            quantity.times do 
                @items << title
            end
        else 
            @total += price
            @items << title
        end
        
        
        
    end
    
    def items
        @items 
    end

    def apply_discount
        #binding.pry
        if @discount
            self.total = self.total - self.total * self.discount / 100
            return "After the discount, the total comes to $#{self.total}."
        else  
            return "There is no discount to apply."
        end
    end
    
    def void_last_transaction 
        # self.total = self.total - @last_transaction[1]

        if @last_transaction[2]
            self.total = self.total - @last_transaction[1] * @last_transaction[2]
        else
            self.total = self.total - @last_transaction[1]
        end

    
    end
    
end