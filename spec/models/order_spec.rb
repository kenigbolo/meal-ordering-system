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
end
