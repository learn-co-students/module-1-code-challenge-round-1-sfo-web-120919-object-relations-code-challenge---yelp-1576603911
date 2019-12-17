

# - `Review#customer`
#   - returns the customer object for that review
#   - Once a review is created, should not be able to change the customer
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, should not be able to change the restaurant

class Review

    attr_accessor :customer, :restaurant, :rating
    @@all =[]
    
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def restaurant
        all_reviews = Review.all
        my_restaurant_review = all_reviews.select do |review|
            review.restaurant == self
        end
        
    end

    def self.all
        @@all
    end
end