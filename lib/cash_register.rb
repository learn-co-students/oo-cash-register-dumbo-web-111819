
class CashRegister
    attr_accessor :discount, :total, :purchased, :last_added
    def initialize(discount=0)
        @total = 0
        @discount = discount

        @purchased = []
    end

    def total 
        @total
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        quantity.times do 
            @purchased << title
        end
            @last_added = price * quantity
    end

    def apply_discount
        if discount != 0
            self.total = @total * (100 - discount.to_f)/100
            return "After the discount, the total comes to $#{self.total.to_i}."
        end
        "There is no discount to apply."            
    end

    def items
        @purchased
    end

    def void_last_transaction
        @total = self.total - self.last_added
    end
end