class Customer
  attr_accessor :given_name, :family_name
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurants
    restaurant_reviews = Review.all.select {|review| review.customer == self}
    restaurant_reviews.map{|review| review.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.select {|review| review.customer == self}.count
  end

  def self.find_by_name(name)
#   
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose 
#   full name matches

    # self.all.first {|customer| customer.name ==}

  end



  def self.find_all_by_given_name(name)

    self.all.select {|customer| given_name == name }
    #   - given a string of a given name, returns an **array** containing 
#   all customers with that given name
  end

end

