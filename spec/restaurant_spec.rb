require 'restaurant'
require 'stringio'

describe Restaurant do

  let(:restaurant) {Restaurant.new}


  before do
    Message.any_instance.stub(:send_message)
  end

    it 'should be able to add dish to cart' do 
      restaurant.order("noodles")
      restaurant.order("chow_mein")
      restaurant.order("peking_duck")
      expect(restaurant.cart.items_count).to eq(3) 
    end

    it 'should be able to take payment' do 
      restaurant.order("noodles")
      restaurant.get_payment(2)
      expect(restaurant.cart).to be_paid
    end

    it 'should be able to send order confirmation' do 
      restaurant.order("noodles")
      restaurant.get_payment(2)
      expect(restaurant.send_confirmation).to eq("Thank you for your order. A text message has been sent to your phone")
    end 


end