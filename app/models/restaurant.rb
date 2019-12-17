class Restaurant
  attr_reader :name
  attr_accessor :customer, :review
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    #returns an array of all reviews for that restaurant
      Review.all.select do |review|
        review.name == self 
      end
  
    
  end

  def customers
    #returns a **unique** list of all customers who have reviewed a particular restaurant.

  end

  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
  end

end


