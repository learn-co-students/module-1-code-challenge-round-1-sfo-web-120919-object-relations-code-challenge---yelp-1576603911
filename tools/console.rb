require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("bob", "burger")
customer2 = Customer.new("terry", "taco")
customer3 = Customer.new("sally", "salad")

restaurant1 = Restaurant.new("take a taco")
restaurant2 = Restaurant.new("buy a burger")
restaurant3 = Restaurant.new("scarf a salad")


review1 = Review.new(customer1, restaurant1, 4)
review2 = Review.new(customer2, restaurant2, 2)
review3 = Review.new(customer3, restaurant3, 4)
review4 = Review.new(customer2, restaurant1, 3)
review5 = Review.new(customer3, restaurant2, 5)









# tools/console.rb

binding.pry
0 #leave this here to ensure binding.pry isn't the last line