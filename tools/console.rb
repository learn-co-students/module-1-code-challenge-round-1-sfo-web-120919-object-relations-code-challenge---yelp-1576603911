require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Jack", "Rabbit")
customer2 = Customer.new("Billy", "Bob")
customer3 = Customer.new("Jabba", "Wabba")
customer4 = Customer.new("Billy", "Bob")
customer5 = Customer.new("Billy", "Job")

restaurant1 = Restaurant.new("Dons")
restaurant2 = Restaurant.new("Hutt")
restaurant3 = Restaurant.new("Lardhouse")
restaurant4 = Restaurant.new("The Dead Chicken")

review1 = Review.new(customer1, restaurant1, 6)
review2 = Review.new(customer2, restaurant2, 7)
review3 = Review.new(customer3, restaurant3, 8)
review4 = Review.new(customer1, restaurant2, 2)
review5 = Review.new(customer2, restaurant3, 9)
review6 = Review.new(customer3, restaurant1, 5)
review7 = Review.new(customer2, restaurant1, 4)
review8 = Review.new(customer3, restaurant2, 1)
review9 = Review.new(customer1, restaurant3, 3)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line