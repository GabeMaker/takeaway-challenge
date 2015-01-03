DISHLIST = {pizza: 12, pasta: 10, salad: 7.50, garlic_bread: 5, cola: 2.5, mineral_water: 2}

class User

  attr_accessor :order

  def initialize
    @order = []
  end

  def add_dish(dish, number=1)
    number.times do
    @order << dish
    end 
  end
  
end