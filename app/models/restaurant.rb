class Restaurant
  attr_accessor 
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select do |review| 
      review.restaurant == self
    end
  end

  def customers
    Review.all.map { |review| review.customer }.uniq
  end

  def ratings
    reviews.map do |review| 
      review.rating
    end
  end

  def average_star_rating
    ratings.inject{|sum, element| sum + element} / ratings.size
  end

  
end
