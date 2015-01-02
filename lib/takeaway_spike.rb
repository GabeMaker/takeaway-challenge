# FUNCTIONALITY 1: list of dishes with prices

# keep it simple, 2 choices for main, side and drink
DISHLIST = {pizza: 12, pasta: 10, salad: 7.50, garlic_bread: 5, cola: 2.5, mineral_water: 2}

def print_dishlist
  # dishlist = {pizza: 12, pasta: 10, salad: 7.50, garlic_bread: 5, cola: 2.5, mineral_water: 2}
  DISHLIST.each_with_index { |(k,v), i| print "#{i+1}. #{k} £#{v}\n"}
end

print_dishlist

# FUNCTIONALITY 2:

  # a) "Placing the order by giving the list of dishes, their quantities and a number that should be the exact total"

      # my initial and very literal interpretation of this functionality:

        # order( (pizza, 2), garlic_bread, cola, 31.5)

      # maybe more like:

        # add_dish (pizza, 2)
        # add_dish (garlic_bread)     <- 1 implied if no 2nd argument given
        # add_dish (cola)
        
      # involving adding dishes to an array (my_order). Could also add dishes by number. Then

        # order (my_order, 31.5)

  # b) "If the sum is not correct the method should raise an error"

      # if statement comparing second argument from order() to total of values of items ordered from hash

  # c) "otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now"

      # Twilio stuff