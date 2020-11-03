class CashRegister
    attr_accessor :total, :discount, :items, :transaction

    def initialize(discount=0)
                @items = []
                @total = 0
                @discount = discount
    end
    def add_item(title, price, quantity=1)
        @total += price * quantity
        quantity.times{@items << title}
        self.transaction = price * quantity
    end
    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else   @total -= @total * @discount / 100
        "After the discount, the total comes to $#{@total}."
        end
    end
    def items
        @items
    end
    def void_last_transaction
        self.total = self.total - self.transaction
    end
end
