require_relative 'menu'
require_relative 'cart'
require_relative 'dish'

class Restaurant

  attr_reader :cart, :menu

  def initialize
    @menu = Menu.new
    @cart = Cart.new
    # list_menu
  end 
  

  def get_order
    input = nil
    puts "Please Select Item from Menu"
    @menu.display
    puts "Please enter name of item you wish to order."
    puts "If you would like to order multiples of one item, please enter the name and number of items"  
    puts "When you are finished ordering, enter 'finished'"
      
      until input == "finished"  
        # @cart.items.length > 0 ? "Items in cart #{@cart.list_items} total: £#{@cart.total_price}"
            print ">"
            input = gets.chomp.split(/[\s,]+/)
            item = input[0]
            input[1] != nil ? number = input[1] : number = 1
            self.order(item, number)
      end
      puts "thanksme"
  end

  def order(item, number)
    new_order = @menu.dishes.assoc(item)
    name = new_order[0]  
    price = new_order[1]
    dish = Dish.new(:name => name, :price => price)
    number == 1 ? cart.add(dish) : number.to_i.times{cart.add(dish)}
  end

  def cancel(item)
    cart.items.delete_if {|dish| dish.name == item}
  end

  def confirm_order
    cart.list_items.each {|dish, number| puts "#{number} #{dish}"}
    puts "Total : £#{cart.total_price}"
    puts "Please confirm order yes/no"
    confirm = gets.chomp
    if confirm == "yes"
      #take_payment
    else
      intro
    end
  end

end



