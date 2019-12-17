# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
# - `Customer#add_review(restaurant, rating)`
#   - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_given_name(name)`
#   - given a string of a given name, returns an **array** containing all customers with that given name

class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def restaurants
    all_restaurant_review = Review.all
    my_restuarant_review = all_restaurant_review.select do |review|
      review.customer == self
    end
    my_restuarant_review.map do |review|
      review.restaurant
    end

  end

  def add_review(restaurant, rating)
    if restuarants?(restaurant) ## finish this code
          reviews.find { |review| review.restaurant == restaurant }.rating = rating
        else 
          Review.new(self, restaurant, rating)
        end
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end
end
