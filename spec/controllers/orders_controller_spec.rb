require 'rails_helper'

RSpec.describe OrdersController, type: :controller do

order = FactoryGirl.create :order

  	describe "#create" do
	  it "should create new Order" do
		assert order.save
	  end

	  it "should render single page template" do
	  	get :index
	  	expect(response).to render_template(:index)
	  end

	  it "should return an OK status code" do
	  	expect(response.status).to eq(200)
	  end
	end

	describe "#update" do
	  it "should update existing order" do
		meal = Meal.create(name: "Meal", price: 20.0, user_id: "1")
		order.meal_order.push(meal)
		assert order.save
	  end
	  
	  it "should render default single page template" do
	  	get :index
	  	expect(response).to render_template(:index)
	  end

	  it "should return an OK status code" do
	  	expect(response.status).to eq(200)
	  end	  
	end

	describe "#new" do
	  it "is valid with valid attributes" do
	    expect(Order.new).to be_valid
	  end

	  it "should render default single page template" do
	    get :index
	    expect(response).to render_template(:index)  
	  end

	  it "returns the OK status code" do
	    expect(response.status).to eq(200)
	  end
	end

	describe "#index" do
	  it "renders the index template" do
	    get :index
	    expect(response).to render_template(:index)  
	  end

	  it "returns the OK status code" do
	    expect(response.status).to eq(200)
	  end
	end

	describe "#status" do
	  it "should update status of order" do
		order.status = "Ordered"
		assert order.save
	  end
	  
	  it "should render default single page template" do
	  	get :index
	  	expect(response).to render_template(:index)
	  end

	  it "should return an OK status code" do
	  	expect(response.status).to eq(200)
	  end	  
	end

	describe "#show" do
	  it "is valid with valid attributes" do
	    expect(Order.new).to be_valid
	  end

	  it "should render default single page template" do
	    get :index
	    expect(response).to render_template(:index)  
	  end
	  
	  it "returns the OK status code" do
	    expect(response.status).to eq(200)
	  end
	end
end
