require 'menu'

describe Menu do

  let(:menu) {Menu.new}
  
  it 'should know the available dishes and their prices' do
    expect(menu.dishes).to be_a Hash
  end

  it 'should include peking duck' do
    expect(menu.dishes).to include ({"peking_duck" => 3})
  end

  it 'should be able to update with new items' do
    expect(menu.dishes.length).to eq(3)
    menu.add("ginger beef", 5)
    expect(menu.dishes.length).to eq(4)
  end

end