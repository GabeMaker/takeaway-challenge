# keep it simple, 2 choices for main, side and drink

DISHLIST = {pizza: 12, pasta: 10, salad: 7.50, garlic_bread: 5, cola: 2.5, mineral_water: 2}

def print_dishlist
  # dishlist = {pizza: 12, pasta: 10, salad: 7.50, garlic_bread: 5, cola: 2.5, mineral_water: 2}
  DISHLIST.each_with_index { |(k,v), i| print "#{i+1}. #{k} £#{v}\n"}
end

print_dishlist
