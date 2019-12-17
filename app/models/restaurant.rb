

# - `Restaurant#reviews`
# - returns an array of all reviews for that restaurant
# - `Restaurant#customers`
# - Returns a **unique** list of all customers who have reviewed a particular restaurant.

class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def reviews 
    Review.all.filter { |review| self == review.restaurant}
  end

  # - `Restaurant#average_star_rating`
  # - returns the average star rating for a restaurant based on its reviews
  # - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of rating

  def average_star_rating
     my_reviews = reviews
    (my_reviews.sum { |review| review.rating } * 1.0) / my_reviews.length

  end

  def self.all
    @@all
  end
end
