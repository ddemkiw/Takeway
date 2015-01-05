require_relative 'dish'

class Cart

  attr_accessor :items


  def initialized
    @paid = false
    @items
  end

   def pay!
    @paid = true
    empty!
  end
  
  def paid? 
    @paid
  end 

  def items 
    @items ||=[]
  end

  def add(item)
    items << item 
  end

  def items_count
    items.count
  end

  def empty!
    items.clear
  end

  def total_price
    total = items.collect { |item| item.price} 
    total.inject(:+) 
  end


end