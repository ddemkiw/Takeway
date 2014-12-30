require 'cart'

describe Cart do

  let(:cart) {Cart.new}
  let(:dish1) {double :dish, :price =>2}
  let(:dish2) {double :dish, :price =>3}
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

  it 'should be able to tally items price' do
    cart.add(dish1)
    cart.add(dish2)
    expect(cart.total_price).to eq(5)
  end

  it 'should be able to list items' do
    cart.add(dish1)
    expect(cart.items).to include (dish1)
  end 


end