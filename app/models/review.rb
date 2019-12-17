class Review
    attr_reader :customer, :restaurant, :rating
    @@rating_all = []
    def initialize(customer,restaurant,rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@rating_all << self
    end
    def self.all
        @@rating_all
    end
  
end