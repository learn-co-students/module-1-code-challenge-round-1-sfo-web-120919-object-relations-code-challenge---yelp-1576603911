require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



#customer

customer1 = Customer.new("Brooke","Bachman")
customer2 = Customer.new("Jinoo","Jain")
customer3 = Customer.new("Bailey","Quinn")
customer4 = Customer.new("Maurice","Martita")

restaurant1 = Restaurant.new("Pizza Antica")
restaurant2 = Restaurant.new("Papa Johns")
restaurant3 = Restaurant.new("Pasta Pomodoro")
restaurant4 = Restaurant.new("KFC")


review1 = Review.new(customer1,restaurant1, 27)
review1 = Review.new(customer3,restaurant4, 29)
review1 = Review.new(customer4,restaurant2, 15)
review1 = Review.new(customer2,restaurant3, 3)

restaurant2.customers
restaurant3.reviews
customer3.add_reviews

#I am having so much trouble figuring out how to access things in the arrays, which i usually don't i usually find iterating and comparing things in arrays easy
#I have been studying all week, both days on the weekend, and when it comes
#to these tests I seem to forget everything.

binding.pry
0 #leave this here to ensure binding.pry isn't the last line