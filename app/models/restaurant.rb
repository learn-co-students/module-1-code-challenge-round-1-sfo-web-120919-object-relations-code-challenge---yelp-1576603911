# - `Restaurant#initialize`
#   - Restaurants should be initialized with a name, as a string
# - `Restaurant#name`
#   - returns the restaurant's name
#   - should not be able to change after the restaurant is created

# - `Restaurant#reviews`
#   - returns an array of all reviews for that restaurant
# - `Restaurant#customers`
#   - Returns a **unique** list of all customers who have reviewed a particular restaurant.

# - `Restaurant#average_star_rating`
#   - returns the average star rating for a restaurant based on its reviews
#   - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def reviews
    Review.all.select { |review| self == review.restaurant }
  end

  def customers
    reviews.map { |review| review.customer }.uniq
  end

  def average_star_rating
    my_reviews = reviews
    my_reviews.sum { |review| review.rating } * 1.0 / my_reviews.count
  end
end
