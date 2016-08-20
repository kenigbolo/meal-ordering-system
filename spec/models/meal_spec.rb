require 'rails_helper'

RSpec.describe Meal, type: :model do
meal = Meal.new

	context "When a new Meal is initialized" do    
      it "should not be able to initialize a meal object without a user id" do
        expect(meal).to_not be_valid
      end

      it "is expected to be a valid meal object" do
        expect(meal).to be_a_new(Meal)
      end      
    end

    context "When a meal details are saved" do  
      it "is expected to save a meal object" do
      	meal.user_id = "1"
      	meal.save
        expect(meal).to be_a_new(Meal)
      end

      it "is expected to save all meal properties defined" do
      	meal = Meal.create(user_id: "1", name: "Rice", price: 20.0)
        expect(meal.user_id).to eq(1)
        expect(meal.name).to eq("Rice")
        expect(meal.price).to eq(20.0)
      end

      it "is not valid without a creation date" do
		meal.created_at = nil
	    meal.save
		expect(meal).to_not be_valid
	  end

	  it "is not valid without a date for updated_at" do
		meal.updated_at = nil
		meal.save
		expect(meal).to_not be_valid
	  end

	  it "is not valid without a User ID" do
	  	meal.save
		expect(meal).to_not be_valid
	  end
    end

	describe "Associations" do
	  it "belongs to a User" do
	    assc = described_class.reflect_on_association(:user)
	    expect(assc.macro).to eq :belongs_to
	  end

	  it "belongs to a User" do
	    assc = described_class.reflect_on_association(:user)
	    expect(assc.macro).to eq :belongs_to
	  end
	end
end
