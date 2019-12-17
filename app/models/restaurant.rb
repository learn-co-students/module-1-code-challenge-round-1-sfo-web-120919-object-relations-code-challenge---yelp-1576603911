class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    Review.all.select {|element| element.restaurant == self}
  end

  def customers
    customer_arr = reviews.map{|ele| ele.customer}
    customer_arr.uniq
  end

  def average_star_rating
    sum = 0
    reviews.each{|ele| sum += ele.rating}
    avg = sum/reviews.count
  end
end
