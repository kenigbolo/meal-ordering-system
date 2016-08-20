require 'rails_helper'

RSpec.describe Order, type: :model do
  	order = FactoryGirl.create :order

  	context "When a new Order is initialized" do
	  it "should be able to create a new Order" do
		assert order.save
	  end

      it "is expected to be a valid order object" do
        expect(order).to_not be_a_new(Meal)
      end

      it "should initialize an order object" do
        expect(order).to be_valid
      end
	end

    context "When an Order details are saved" do
	  it "should be able to store meal objects in its meal order attribute" do
		meal = Meal.create(name: "Meal", price: 20.0, user_id: "1")
		order.meal_order.push(meal)
		assert order.save
	  end
	end
end