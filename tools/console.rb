require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#############################################
customer1 = Customer.new("George","Washington")
customer2 = Customer.new("Bob","Tammy")
customer3 = Customer.new("Bob","Tammy")
customer4 = Customer.new("Bob","Tammy")

rest1 = Restaurant.new("Whipping Tales")
rest2 = Restaurant.new(" My Kitchen ")

review1 = Review.new(customer1,rest1,5)
review2 = Review.new(customer2,rest1,4.5)
review3 = Review.new(customer1,rest1,2)






binding.pry
0 #leave this here to ensure binding.pry isn't the last line