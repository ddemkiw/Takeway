require 'store'
require 'menu'
require 'cart'

describe Store do

  let(:store) {Store.new}
  let(:cart) {Cart.new}

  it 'should list the menu' do
    expect(store.list_menu).to be_a Menu
  end 

  it 'should be able to place an order' do 
    store.order("noodles")
    expect(store.cart.items_count).to eq(1) 
  end

  it 'should be able to confirm order' do 
    store.order("noodles")
    expect(store.confirm_order).to eq(2)
  end

end