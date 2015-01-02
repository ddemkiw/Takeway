require_relative 'dish'

class Cart

  attr_accessor :items

  def initialized
    @items
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

  def list_items
    items.map{|item| "#{item.name}, £#{item.price}"}
  end

  def remove(item)
    @items.delete(item)
  end

  def empty
    items.clear
  end

  def total_price
    total = items.collect { |item| item.price} 
    total.inject(:+) 
  end


end