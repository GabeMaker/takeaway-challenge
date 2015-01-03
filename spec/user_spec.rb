require 'user'

describe User do

  let(:user) { User.new }
  
  it 'list of dishes and prices' do
    expect(DISHLIST).to eq ({pizza: 12, pasta: 10, salad: 7.50, garlic_bread: 5, cola: 2.5, mineral_water: 2})
  end

  it 'can add an item to the order' do
    user.add_dish('pizza')
    expect(user.order).to eq ['pizza']
  end

  it 'can 2 add items to the order' do
    user.add_dish('pizza')
    user.add_dish('pasta')
    expect(user.order).to eq ['pizza', 'pasta']
  end

  it 'can add 2 of one item to the order' do
    user.add_dish('pizza',2)
    expect(user.order).to eq ['pizza', 'pizza']
  end

  it 'can calculate the cost of an order' do
    user.add_dish('pizza')
    user.add_dish('pasta')
    user.add_dish('cola',2)
    expect(user.total).to eq 27
  end

  it 'can order everything in an array and return true if price correct' do
    user.add_dish('pizza')
    user.add_dish('pasta')
    expect(user.place_order(22)).to be true
  end
end