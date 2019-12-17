class Restaurant
  attr_reader :name, :review, :restaurant

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|review| self == review.restaurant}
  end
  
  def customers
    #- Returns a **unique** list of all customers who 
    #have reviewed a particular restaurant.
    customer_reviews = Review.all.select {|review| review.restaurant == self}
    customer_reviews.map{|review| review.customer}.uniq
  end

  def average_star_rating
    ratings = reviews.map {|review| review.rating}
    ratings.sum / ratings.length
  end
  
end 

