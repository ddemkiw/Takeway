require 'restaurant'

describe Restaurant do

  let(:restaurant) {Restaurant.new}
  let(:message) {double :message}


  before do
    Message.any_instance.stub(:send_message)
    Restaurant.any_instance.stub(:puts)
    Restaurant.any_instance.stub(:intro)
    Restaurant.any_instance.stub(:get_payment)
  end

    it 'should be able to add order to cart' do 
      restaurant.order("noodles")
      restaurant.order("chow_mein")
      restaurant.order("peking_duck")
      expect(restaurant.cart.items_count).to eq(3) 
    end

    it 'should be able to create a dish object from an order' do 
      restaurant.new_order('noodles')
      expect(dish.name).to eq('noodles')
    end

    it 'should be able to confirm order' do 
      expect(restaurant).to receive(:intro).with no_args
      restaurant.order('noodles')
      expect(restaurant.confirm_order).to 
    end 

    # it 'should be able to cancel and order' do 
    #   restaurant.order("chow_mein")
    #   restaurant.order("noodles")
    #   restaurant.cancel("noodles")
    #   expect(restaurant.cart.items_count).to eq(1) 
    # end
   

end