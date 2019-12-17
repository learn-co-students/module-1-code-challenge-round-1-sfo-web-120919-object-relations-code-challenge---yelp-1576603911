class Restaurant
  attr_reader :name
  attr_accessor :review, :customer, :restaurant

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def reviews #trying to iterate through the review array and grab the restaurant method, because it exposes the restaurant.
      Review.all.select do |r|

      end

  end

  def self.all
    @@all
  end

  def customers #i am trying to iterate through the array, find a particular restaurant, then compare the restaurant to the customer's review of it
    customers_array = Review.all.select do |r| #r gives me the review instance. 
      binding.pry
      r == self #trying to grab restaurant name from review instance, having trouble accessing name from the review instance.
    end
  end

  def average_star_rating
    restaurant.reviews
  end


end


#i knew how to do all of this yesterday and i am so disappointed i cant seem to do any of it today.