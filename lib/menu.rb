class Menu

  attr_reader :dishes

  def initialize
    @dishes = {
          
          "peking_duck" => 3, 
          "noodles" => 2, 
          "chow_mein" => 4
              }
  end

  def display
    @dishes.each { |dish, price| puts "#{dish} £#{price}" }
  end

  def add(dish, price)
    @dishes[dish] = price
  end

end