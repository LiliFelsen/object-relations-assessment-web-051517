require_relative './customer.rb'
require_relative './restaurant.rb'

class Review

  attr_accessor :restaurant, :content, :customer, :restaurant

  @@all_reviews = []

  def initialize(restaurant, content)
    @restaurant, @content = restaurant, content
    @@all_reviews << self
  end

  def self.all
    @@all_reviews
  end

  def customer
    self.customer
  end

  def restaurant
    self.restaurant
  end

end

rw1 = Review.new('r1', 'blabla')
rw2 = Review.new('r2', 'ohyeah')
