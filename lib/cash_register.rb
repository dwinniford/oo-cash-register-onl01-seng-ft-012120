class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity) 
    quantity.times { @items << title }
  end 
  
  def apply_discount
    if @discount != 0 
      @total = (@total * ((100-@discount).to_f/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end 
  end 

end 
