require 'pry'

class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    reviews = Review.all.select {|r| r.restaurant == self}
  end

  def customers
    customers  = reviews.map {|r| r.customer}.uniq
  end


  def average_star_rating
    sum_total = Review.all.sum do |restaurant|
      restaurant.rating
    end
    sum_total / Review.all.size.to_f
  end

end
