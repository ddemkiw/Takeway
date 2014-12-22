class Dish

attr_accessor :price, :name

  def initialize(options = {})
    self.price = options.fetch(:price, price)
    self.name = options.fetch(:name, name) 
  end


  # def self.peking_duck
  #   new(:price => 3.50, :name => "Peking Duck")
  # end

  # def self.chow_mein
  #   new(:price => 4.00, :name => "Chow Mein")
  # end

  # def self.crispy_beef
  #   new(:price => 5.00, :name => "Crispy Beef")
  # end

end


