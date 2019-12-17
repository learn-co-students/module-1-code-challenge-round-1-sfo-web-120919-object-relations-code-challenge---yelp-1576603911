require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("steak house")
rest2 = Restaurant.new("pasta house")
rest3 = Restaurant.new("pizza house")

c1 = Customer.new("bill", "ni")
c2 = Customer.new("candy", "corn")
c3 = Customer.new("someone", "else")
c4 = Customer.new("someone", "here")
c5 = Customer.new("someone", "now")



review1 = Review.new(c1, rest1, 10)
review2 = Review.new(c2, rest2, 5)
review3 = Review.new(c3, rest3, 6)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
