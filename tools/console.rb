require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
restaurant1 = Restaurant.new("Chick Fila")
restaurant2 = Restaurant.new("Angelines")
restaurant3 = Restaurant.new("Tonys")
restaurant4 = Restaurant.new("Sotto Mare")
restaurant5 = Restaurant.new("La Mar")
restaurant6 = Restaurant.new("Marugame")
restaurant7 = Restaurant.new("Bestia")
restaurant8 = Restaurant.new("Angelline Osteria")
restaurant9 = Restaurant.new("Benu")
restaurant10 = Restaurant.new("Hinata")

customer1 = Customer.new("Aaron", "Kim")
customer2 = Customer.new("Jason", "Mortensen")
customer3 = Customer.new("Nick", "Corona")
customer4 = Customer.new("David ", "Rosenholz")
customer5 = Customer.new("Gee", "Vee")
customer6 = Customer.new("Leigha", "De La Rosa")

review1 = Review.new(customer1, restaurant1, 6)
review2 = Review.new(customer2, restaurant2, 10)
review3 = Review.new(customer3, restaurant3, 9)
review4 = Review.new(customer4, restaurant4, 8)
review5 = Review.new(customer5, restaurant5, 7)
review6 = Review.new(customer6, restaurant4, 5)
review7 = Review.new(customer1, restaurant3, 4)
review8 = Review.new(customer1, restaurant8, 2)
review9 = Review.new(customer3, restaurant9, 7)
review10 = Review.new(customer4, restaurant10, 5)
review11 = Review.new(customer5, restaurant1, 4)
review12 = Review.new(customer2, restaurant6, 2)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line