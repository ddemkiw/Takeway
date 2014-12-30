require 'menu'

describe Menu do

  let(:menu) {Menu.new}
  
  it 'should know the available dishes and their prices' do
    expect(menu.list).to be_a Array
  end

  it 'should include peking duck' do
    expect(menu.list).to include ({"peking_duck" => 3})
  end

end