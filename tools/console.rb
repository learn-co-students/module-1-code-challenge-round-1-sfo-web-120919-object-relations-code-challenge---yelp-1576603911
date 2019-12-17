require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("John", "Smith")
customer2 = Customer.new("Jane", "Doe")
customer3 = Customer.new("Bernie", "Sanders")
customer4 = Customer.new("Nick", "Corona")
customer5 = Customer.new("Hulk", "Hogan")

restaurant1 = Restaurant.new("HOOTERS")
restaurant2 = Restaurant.new("APPLEBEES")
restaurant3 = Restaurant.new("CHILIS TOO")
restaurant4 = Restaurant.new("MCDONALDS")


review1 = Review.new(customer1, restaurant1, 1)
review2 = Review.new(customer2, restaurant2, 3)
review3 = Review.new(customer3, restaurant3, 2)
review4 = Review.new(customer4, restaurant4, 4)
review5 = Review.new(customer5, restaurant1, 5)
review6 = Review.new(customer1, restaurant2, 5)
review7 = Review.new(customer2, restaurant3, 3)
review8 = Review.new(customer3, restaurant4, 2)
review9 = Review.new(customer3, restaurant1, 1)
review0 = Review.new(customer5, restaurant1, 4)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line