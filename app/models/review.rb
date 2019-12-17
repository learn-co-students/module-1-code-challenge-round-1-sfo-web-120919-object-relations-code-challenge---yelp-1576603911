##this is the join
class Review
    # attr_reader :customer
    attr_accessor :customer, :restaurant, :rating
    @@all = []


    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating

        @@all << self

    end

    def self.all
        @@all
    end

    def customer
        #returns the customer object for that review
        #Once a review is created, should not be able to change the customer
        Customer.all.select do |review|
            review.customer == self

        end


    end

    def restaurant
        #returns the restaurant object for that given review
        #Once a review is created, should not be able to change the restaurant


    end
  
end
