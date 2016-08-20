require 'rails_helper'

RSpec.describe Order, type: :model do
  	order = FactoryGirl.create :order

  	it "should be able to create a new Order" do
	  assert order.save
	end


	it "should be able to store meal objects in its meal order attribute" do
		meal = Meal.create(name: "Meal", price: 20.0, user_id: "1")
		order.meal_order.push(meal)
		assert order.save
	end


  	it "is valid with valid attributes" do
    	expect(Order.new).to be_valid
  	end
end
