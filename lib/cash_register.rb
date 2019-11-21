require 'pry'
class CashRegister 
    attr_accessor :discount, :total, :items, :last_transaction
    
    def initialize(discount=0)
        @total = 0 
        @discount = discount 
        @items = []
    end
    def add_item(title,price,quantity=1)
        self.total += price * quantity
        quantity.times do 
        items << title 
        # add nunber seperately to an array so you can delete the last one
          end 
          self.last_transaction = price * quantity
        #   much smarter method 
        end
    def apply_discount
       if discount != 0 
         self.total = (total * ((100 - discount.to_f)/100)).to_i
        return  "After the discount, the total comes to $#{total}."
       end 
       if discount = 0 
        "There is no discount to apply."
       end 
    end 
   
    def void_last_transaction
        self.total = self.total - self.last_transaction
end  
end 

