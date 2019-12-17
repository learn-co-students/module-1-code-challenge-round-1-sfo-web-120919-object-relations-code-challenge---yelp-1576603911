require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

restaurant1 = Restaurant.new("Sushi Shi")
restaurant2 = Restaurant.new("in&out burger")
restaurant3 = Restaurant.new("pasta house")
customer1 = Customer.new("Tom", "White")
customer2 = Customer.new("Hannah", "Brown")
customer3 = Customer.new("Lucy", "Grub")
review1 = Review.new(customer2, restaurant1, 5)
review2 = Review.new(customer1, restaurant2, 2)
review3 = Review.new(customer2, restaurant3, 3)
review4 = Review.new(customer3, restaurant2, 2)
review5 = Review.new(customer1, restaurant1, 4)
binding.pry

binding.pry
0 #leave this here to ensure binding.pry isn't the last line