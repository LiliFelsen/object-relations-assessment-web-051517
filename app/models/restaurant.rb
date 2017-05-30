require_relative './customer.rb'
require_relative './review.rb'

class Restaurant
  attr_accessor :name

  @@all_restaurants = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all_restaurants << self
  end

  def self.all
    @@all_restaurants
  end

  def self.find_by_name name
    @@all_restaurants.detect {|restaurant| restaurant.name == name}
  end

  def add_review review
    self.reviews << review
  end

  def reviews
    self.reviews
  end

  def customers
    self.reviews.map {|review| review.customer}
  end

end

r1 = Restaurant.new('r1')
r2 = Restaurant.new('r2')
