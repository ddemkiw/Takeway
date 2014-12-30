class Cart

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

  def total
    total = items.collect { |item| item.price} 
    total.inject(:+) 
  end

  def list 
    items.each {|item| p item}
  end



end