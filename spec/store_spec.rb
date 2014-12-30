require 'store'

describe Store do

  let(:store) {Store.new}

  it 'should be able to place an order' do 
    store.order("noodles", 1)
    store.order("chow_mein", 1)
    store.order("peking_duck", 1)
    expect(store.cart.items_count).to eq(3) 
  end

  it 'should be able to add multiple number of items at once' do
     store.order("peking_duck", 3)
     expect(store.cart.items_count).to eq(3)
  end

  it 'should be able to cancel and order' do 
    store.order("chow_mein", 1)
    store.order("noodles", 1)
    store.cancel("noodles")
    expect(store.cart.items_count).to eq(1) 
  end

  it 'should be able to confirm order' do 
    store.order("noodles", 1)
    expect(store.confirm_order).to eq(nil)
  end

end