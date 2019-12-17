# - `Customer#initialize`
#   - Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"
# - `Customer#given_name`
#   - returns the customer's given name
#   - should be able to change after the customer is created
# - `Customer#family_name`
#   - returns the customer's family name
#   - should be able to change after the customer is created
# - `Customer#full_name`
#   - returns the full name of the customer, with the given name and the family name concatenated, Western style.
# - `Customer.all`
#   - returns **all** of the customer instances

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
    @family_name = family_name
    save
  end

  def self.all
    @@all
  end

  def self.find_by_name(customer_full_name)
    self.all.find { |customer| customer.full_name == customer_full_name }
  end

  def self.find_all_by_given_name(customer_given_name)
    self.all.select { |customer| customer.given_name == customer_given_name }
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def save
    self.class.all << self
  end

  def reviews
    Review.all.select { |review| self == review.customer }
  end

  def restaurants
    reviews.map { |review| review.restaurant }.uniq
  end

  def num_reviews
    reviews.count
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end
end
