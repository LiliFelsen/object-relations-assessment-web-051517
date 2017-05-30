require_relative './review.rb'
require_relative './restaurant.rb'

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

c1 = Customer.new("lili", "ouaknin")
c2 = Customer.new("david", "felsen")
