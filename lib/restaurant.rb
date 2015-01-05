
require_relative 'message'
require_relative 'cart'
require_relative 'menu'
require_relative 'dish'

class Restaurant

attr_reader :cart

  def initialize
    @menu = Menu.new
    @cart = Cart.new
  end 

  def get_payment(payment)
    payment == cart.total_price ?  cart.pay! && send_confirmation : 'This is not the correct amount.'
  end

  def send_confirmation
    message = Message.new
    message.send_message("+447730344711")
    return "Thank you for your order. A text message has been sent to your phone"
  end

  def new_order(menu_key)
    new_order = @menu.dishes.assoc(menu_key)
    @name = new_order[0]  
    @price = new_order[1]
  end

  def order(item)
    new_order(item)
    dish = Dish.new(:name => @name, :price => @price)
    @cart.add(dish)
  end


end



