class Customer
  attr_accessor :given_name, :family_name
  @@customer_all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@customer_all << self
############
    # given_new_name = self.class.format_name(given_name)
    # family_new_name = self.class.format_name(family_name)
############
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@customer_all
  end
  
  def my_reviews
    Review.all.select{|element| element.customer == self}
  end

  def restaurants
    restaurant_arr = my_reviews.map{|element| element.restaurant}
    restaurant_arr.uniq
  end

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    my_reviews.count
  end

  def self.format_name(name)
    arr = name.split(" ")
    new_arr = arr.map(&:capitalize)
    new_arr.join(" ")
  end 

  def self.find_by_name(name)
    # new_name = self.format_name(name)
    new_name = name
    found_name = self.all.find{|element| element.full_name == new_name}
    if found_name
      return found_name.given_name
    else
      return "No such customer"
    end
  end

  def self.find_all_by_given_name(name)
    # new_name = self.format_name(name)
    new_name = name
    new_arr = []
    self.all.each do |ele|
      if ele.given_name == new_name
        new_arr << ele
      end
    end
    new_arr
  end
end
