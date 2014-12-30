class Store

  def initialize
    @menu = Menu.new
    @cart = Cart.new
    # intro
    # list_menu
  end 
  
  def cart
    @cart
  end
  
  def list_menu
    @menu
  end

  def order(item)
    order = @menu.list.select!{|entry| entry.has_key?(item)}
    name = order[0].keys[0]  
    price = order[0].values[0]
    dish = Dish.new(:name => name, :price => price)
    cart.add(dish)
  end

  # def cancel(item)

  # end

  def confirm_order
    cart.list
    cart.total
    puts "Please confirm order yes/no"
    confirm = gets.chomp
    if confirm == "yes"
      puts "flerp"
    else
      puts "fatty fat fat"
    end
  end

end