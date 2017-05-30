# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all_customers = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all_customers << self
    @reviews = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all_customers
  end

  def self.find_by_name full_name
    @@all_customers.detect {|customer| customer.full_name == full_name}
  end

  def self.find_all_by_first_name first_name
    @@all_customers.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    @@all_customers.map {|customer| customer.full_name}
  end

  def add_review restaurant, content
    new_review = Review.new(restaurant, content)
    self.reviews << new_review
    new_review.customer = self
    restaurant.add_review(new_review)
  end

end

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
