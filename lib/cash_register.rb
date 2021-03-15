class CashRegister

    attr_accessor :total 
    attr_reader :discount, :items 
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
       
    end 
   

    def add_item(item, price, quantity =1)
        quantity.times do
            @items << item
        end
        @sub_total = @total
        @total += price * quantity
    end

    def apply_discount
        @total-=  @total * discount / 100
        if @discount != 0
        return "After the discount, the total comes to $#{@total}." 
        else
        return "There is no discount to apply."
        end
    end
    
     def void_last_transaction
        @total = @sub_total
     end

    



end
