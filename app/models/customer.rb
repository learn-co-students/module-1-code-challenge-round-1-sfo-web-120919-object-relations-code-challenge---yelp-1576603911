class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} + ' ' + #{family_name}"
  end

  def given_name
    @given_name
  end

  def family_name
    @family_name
  end

  def self.all
    @@all
  end

  def restaurants
    review.restaurants.select do |cust_review|
      cust_review.restaurants == self
    end
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    total = 0
    review.customer.select do |cust|
      binding.pry
      
    end
  end


end
