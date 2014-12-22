class Menu

  attr_reader :menu

  def initialize
    @menu = [{"peking_duck" => 3}, {"noodles" => 2}, {"chow_mein" => 4}]
  end

  def list
    @menu
  end

  def add(hash={})
    @menu << hash 
  end

end