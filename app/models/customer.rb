require 'pry'

class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def reviews
    reviews = Review.all.select {|r| r.customer == self}
  end

  def restaurants
    restaurants  = reviews.map {|r| r.restaurant}.uniq
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    self.reviews.count
  end

  def self.find_by_name(name)
    name = full_name
    self.all.find do |customer|
      customer.name == name
    end
    ## OR
    ### self.all.find {|customer| customer.name == name}.first
  end

  def self.find_all_by_given_name(name)
    new_arr = []
    self.all.find do |customer|
      customer.name == name
    new_arr << name
    end
  end

end
