# Add the following methods to this burrito class and call the methods below
#the class:
# 1. add_topping
# 2. remove_topping
# 3. change_protein

class Burrito
  attr_reader :protein, :base, :toppings



  def initialize(protein, base, toppings)
    @protein  = protein
    @base     = base
    @toppings = toppings
  end

def add_topping(topping)
   @toppings = ["#{toppings}, #{topping}"]
 end

def remove_topping(topping)
  @toppings = ["#{toppings}, -#{topping}"]
end

def change_protein(protein)
    @protein = protein
    puts "I'd rather have #{protein} in my burrito!"
  end

end

dinner = Burrito.new("Beans", "Rice", ["cheese", "salsa", "guacamole"])
p dinner.protein
p dinner.base
p dinner.toppings
dinner.change_protein("chicken")
p dinner.protein
dinner.add_topping("jalapenos")
p dinner.toppings
dinner.remove_topping("cheese")
p dinner.toppings
