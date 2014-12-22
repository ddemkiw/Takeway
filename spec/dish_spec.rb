require 'dish'

describe Dish do

  let (:dish) {Dish.new(:price => 3.50, :name => "duck")}
  
  it 'should be initialized with a price' do
    expect(dish.price).to eq(3.50)  
  end

  it 'should be initialized with a name' do
    expect(dish.name).to eq("duck")
  end
 
   # context 'individual dishes' do 
      
   #    it 'should initialized Chow Mein with a price of 4.00' do
   #    expect(Dish.chow_mein.price).to eq(4.00)
   #    end

   #    it 'should initialize Chow Mein with a name' do
   #      expect(Dish.chow_mein.name).to eq("Chow Mein")
   #    end

   #    it 'should initialize Crispy Beef with a name' do
   #      expect(Dish.crispy_beef.name).to eq("Crispy Beef")
   #    end

   #    it 'should initialized Crispy Beef with a price of 5.00' do
   #    expect(Dish.crispy_beef.price).to eq(5.00)
   #    end
      
    # end

end