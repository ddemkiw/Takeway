require 'dish'

describe Dish do

  let (:dish) {Dish.new(:price => 3.50, :name => "duck")}
  
  it 'should be initialized with a price' do
    expect(dish.price).to eq(3.50)  
  end

  it 'should be initialized with a name' do
    expect(dish.name).to eq("duck")
  end
 
  
end