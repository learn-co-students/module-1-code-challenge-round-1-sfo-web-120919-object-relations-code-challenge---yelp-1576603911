class Customer
  attr_accessor :given_name, :family_name, :restaurant, :review
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << full_name
  end

  def full_name
    "#{given_name} #{family_name}"
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
    #Returns a **unique** array of all restaurants a customer has reviewed


  end

  def add_review(restaurant, rating)
    #given a **restaurant object** and a star rating (as an integer), 
    #creates a new review and associates it with that customer and restaurant.
    Review.new = self
  end

  def num_reviews
    #Returns the total number of reviews that a customer has authored
  end

  def self.find_by_name(full_name)
    #given a string of a **full name**, returns the **first customer** whose full name matches

  end

  def self.find_all_by_given_name(given_name)
    #returns an **array** containing all customers with that given name
    self.all.select do |customer|
      customer.given_name == self
    end
  end

end

 

