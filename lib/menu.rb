class Menu

  attr_reader :menu

  def initialize
    @menu = {
          
          "peking_duck" => 3, 
          "noodles" => 2, 
          "chow_mein" => 4
              }
  end

  def display_menu
    @menu.each{|dish, price| p "#{dish} #{price}"}
    @menu
  end

  def add(dish, price)
    @menu[dish] = price
  end

end