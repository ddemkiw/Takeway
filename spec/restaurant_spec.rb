require 'restaurant'
require 'stringio'

describe Restaurant do

  let(:restaurant) {Restaurant.new}
  let(:message) {double :message}


  # before do
  #   Message.any_instance.stub(:send_message)
  #   # Restaurant.any_instance.stub(:puts)
  #   # Restaurant.any_instance.stub(:print)
  #   Restaurant.any_instance.stub(:intro)
  # end

    it 'should be able to add order to cart' do 
      restaurant.order("noodles")
      restaurant.order("chow_mein")
      restaurant.order("peking_duck")
      expect(restaurant.cart.items_count).to eq(3) 
    end

    it 'should be able to take payment' do 


    end 



    # it 'should be able to create a dish object from an order' do 
    #   restaurant.order('noodles')
    #   restaurant.order('peking_duck')
    #   p restaurant
    #   expect(cart.items).to include?('noodles')
    # end

    # it 'should be able to confirm order' do 
    #   Restaurant.stub(:get_payment)
    #   Restaurant.stub(:send_confirmation)
    #   restaurant.order('noodles')
    #   restaurant.confirm_order
    #   # expect(STDOUT).to receive(:puts).with("Please enter payment amount")
    #   # allow(STDIN).to receive(:gets) { '2\n' }
    # end

    # it 'should be able to take payment' do
    #   restaurant.order('noodles')
    #   restaurant.get_payment
    #   allow(STDIN).to receive(:gets) { '9 \n' }
    #   expect(STDOUT).to receive(:puts).with("sorry, you did not enter the correct amount. please try again")
    # end

  
     


    # it 'should be able to cancel and order' do 
    #   restaurant.order("chow_mein")
    #   restaurant.order("noodles")
    #   restaurant.cancel("noodles")
    #   expect(restaurant.cart.items_count).to eq(1) 
    # end
   

end