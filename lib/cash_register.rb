require 'pry'
class CashRegister

    attr_reader :title
    attr_accessor :discount, :total, :items, :last_transaction_amount
  
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price,quantity=1)
        # binding.pry
        self.last_transaction_amount = price * quantity
        self.total += last_transaction_amount
        quantity.times { items.push(title) }
        # binding.pry
    end
        
    def apply_discount
        if discount != 0
            self.total = (total * ((100.00 - discount)/100.to_f)).to_i
            # self.total = (total * ((100.00 - discount.to_f)/100)).to_i
            # self.total = (total * ((100.00 - discount)/100).to_f).to_i
            # self.total = (total * ((100.00 - discount)/100)).to_f.to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        # binding.pry
        items.pop
        self.total -= self.last_transaction_amount
        # binding.pry
    end

  end
