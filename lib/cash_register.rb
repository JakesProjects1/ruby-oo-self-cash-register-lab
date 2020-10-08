require 'pry'
class CashRegister
    
    attr_reader 
    attr_accessor :discount, :total, :title, :price, :quantity
    
    def initialize(discount=20)
        @total = 0
        @discount = discount
    end

    
    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end
    #binding.pry

    def apply_discount
       discount_total = self.total -= self.total * @discount / 100
       "After the discount, the total comes to $#{discount_total}."
    end


end

