require 'cart'
require 'dish'

describe Cart do

  let(:cart) {Cart.new}
  let(:dish1) {double :dish, :price => 2, :name => "noodles"}
  let(:dish2) {double :dish, :price => 3, :name => "duck"}
  let(:dish3) {Dish.new(name: "noodles", price: 2)}

  context 'items' do 

    it 'should be initialized with no items' do
      expect(cart.items.count).to eq(0)
    end 

    it 'should accept items' do
      expect(cart.items_count).to eq(0)
      cart.add(dish1)
      expect(cart.items_count).to eq(1) 
    end

    it 'should be able to be emptied' do 
      cart.add(dish1)
      cart.add(dish2)
      expect(cart.empty!).to eq([])
    end 

  end

  context 'payment' do 

    it 'should be able to tally total price' do
      cart.add(dish1)
      cart.add(dish2)
      expect(cart.total_price).to eq(5)
    end

    it 'should be initialized as unpaid' do 
      expect(cart).not_to be_paid
    end 

    it 'should be able to be paid' do 
      cart.pay!
      expect(cart).to be_paid
    end

  end

end