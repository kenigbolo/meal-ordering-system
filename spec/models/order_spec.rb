require 'rails_helper'

RSpec.describe Order, type: :model do
  	order = Order.new
	before(:all) do
		order.restaurant = "restaurant"
		order.meal_order = []
		order.status = "Active"
  	end

	  	describe "#create" do
		  	it "should create new Order" do
			  assert order.save
			end
		end

		describe "#update" do
			order.save
			it "should update existing order" do
				meal = Meal.create(name: "Meal", price: 20.0, user_id: "1")
				order.meal_order.push(meal)
				assert order.save
			end
		end
end
