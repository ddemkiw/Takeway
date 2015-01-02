require_relative 'menu'
require_relative 'cart'
require_relative 'dish'
require_relative 'message'

class Restaurant

attr_reader :cart

  def initialize
    @menu = Menu.new
    @cart = Cart.new
    intro
  end 

  def intro 
    puts "___Menu___"
    @menu.display
    puts "please select an item from the menu"
    puts "when you have completed your order, please type finish"
    print">"
    get_order
  end

  def get_order
    while(item = gets.chomp) do
        puts item=="finish" ? finish : order(item)
    end
  end

  def confirm_order
    puts "Items #{@cart.list_items}"
    puts "Total : £#{@cart.total_price}"
    puts "Please enter payment amount"
    print "> £"
      get_payment
      send_confirmation
      quit
  end

    def get_payment
     payment = gets.chomp.to_i
      until payment == @cart.total_price do 
        puts  "sorry, you did not enter the correct amount. please try again"
        print "> £"
        payment = gets.chomp.to_i
      end
  end

  def send_confirmation
    message = Message.new
    message.send_message("+447730344711")
    puts "Thank you for your order. A text message has been sent to your phone"
  end

  def new_order(item)
    new_order = @menu.dishes.assoc(item)
    @name = new_order[0]  
    @price = new_order[1]
  end

  def order(item)
    new_order(item)
    dish = Dish.new(:name => @name, :price => @price)
    @cart.add(dish)
  end

  # def cancel(item)
  #   cart.items.delete_if {|dish| dish.name == item}
  # end

  def finish
    confirm_order
  end

  def quit
    cart.empty
    exit!
  end


end



