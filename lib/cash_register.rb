class CashRegister


  attr_accessor :total, :discount, :items, :last_transaction_total



  def initialize(discount=0, total=0)
    @total = total
    @discount = discount
    @items = []
  end


  def add_item(title, price, quantity=1)
    self.total += price*quantity
    quantity.times do
      @items << title
    end
    @last_transaction_total = (price*quantity)
  end


  def apply_discount
    if discount == 0
      @total = @total
      "There is no discount to apply."
    else
      @total = @total * (1-(self.discount.to_f/100))
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end


  def void_last_transaction
    @total -= @last_transaction_total
  end






end
