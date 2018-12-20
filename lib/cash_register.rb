class CashRegister
  attr_accessor :total, :discount, :items
  
  
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  
  def add_item(title, price, qty = 1)
    @title = title 
    @total += price * qty
    # qty.times { self.items << title }
  end
  
  def apply_discount
    if self.discount == 0 
      return "There is no discount to apply."
    else 
        self.total = (self.total * ((100.0 - discount.to_f)/100)).to_i
      return "After the discount, the total comes to $#{self.total}."
    end
  end
  
  def items 
    self.items
  end
  
end
