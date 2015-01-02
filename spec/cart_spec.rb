require 'cart'
require 'dish'

describe Cart do

  let(:cart) {Cart.new}
  let(:dish3) {Dish.new(name: "noodles", price: 2)}
  let(:dish4) {Dish.new(name: "noodles", price: 2)}
  let(:dish5) {Dish.new(name: "derp", price: 2)}
  let(:dish6) {Dish.new(name: "derp", price: 2)}
  let(:dish1) {double :dish, :price => 2, :name => "noodles"}
  let(:dish2) {double :dish, :price => 3, :name => "duck"}

  it 'should be initialized with no items' do
    expect(cart.items.count).to eq(0)
  end

  it 'should accept items'do
    expect(cart.items_count).to eq(0)
    cart.add(dish1)
    expect(cart.items_count).to eq(1) 
  end

  it 'should be able to remove items' do 
    cart.add(dish1)
    expect(cart.items_count).to eq(1)
    cart.remove(dish1)
    expect(cart.items_count).to eq(0)
  end

  it 'should be able to be emptied' do 
    cart.add(dish3)
    cart.add(dish4)
    expect(cart.empty).to eq([])
  end 

  it 'should be able to list items' do 
    cart.add(dish3)
    expect(cart.list_items).to include('noodles, £2')
  end

  it 'should be able to tally total price' do
    cart.add(dish1)
    cart.add(dish2)
    expect(cart.total_price).to eq(5)
  end


end