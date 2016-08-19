require 'rails_helper'

RSpec.describe Meal, type: :model do
meal = Meal.new(user_id: "1")
	it "is not valid without a User ID" do
	  meal = Meal.new
	  expect(meal).to_not be_valid
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
