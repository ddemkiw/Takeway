class Cart

  attr_accessor :items

  def initialized
    items
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

  def remove(item)
    items.delete(item)
  end

  def total_price
    total = items.collect { |item| item.price} 
    total.inject(:+) 
  end

  def list 
    items.each {|item| item}
  end



end