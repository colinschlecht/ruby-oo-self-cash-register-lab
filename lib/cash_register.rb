require 'pry'


class CashRegister

    attr_accessor :total
    attr_reader :discount, :quantity, :price

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item(item, price, quantity=1)
        quantity.times {@items << item}
        @price = price
        @quantity = quantity
        @total += price * quantity
    end
    def returntotal_discount
        self.discount > 0 ? "After the discount, the total comes to $#{self.total.to_i}." : "There is no discount to apply."
    end
    def apply_discount
        self.total *= (1 - self.discount/100.00)
        returntotal_discount
    end

    def items
        @items
    end
    def void_last_transaction
        self.total -= self.price * self.quantity
    end
end



































# class CashRegister
#     attr_accessor :total
#     attr_accessor :receipt

#     def initialize(discount = 0)
#         @total = 0
#         @discount = discount
#         @items = []
#     end

#     def discount
#         @discount
#     end

#     def add_item(title, price, quantity = 1)
#         @price = price
#         @title = title
#         @quantity = quantity
#         quantity > 1 ? self.total += quantity * price : self.total += price
#         quantity.times {@items.push(title)}

#     end

#     def apply_discount
#         if self.discount > 0 
#             self.total *= (1 - discount/100.0)
#             "After the discount, the total comes to $#{self.total.to_i}."
#         else
#             "There is no discount to apply."
#         end
#     end
#     def items
#         @items
#     end
#     def void_last_transaction
#         self.total -= @price*@quantity
#     end
# end

