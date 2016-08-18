require 'rails_helper'

RSpec.describe OrdersController, type: :controller do

	it "renders the index template" do
      get :index
      expect(response).to render_template("index")
      
    end

    it "returns the OK status code" do
    	get :index
    	expect(response.status).to eq(200)
    end

     describe 'GET #new' do
	  it 'assigns a new order to @order' do
	    get :new
	    expect(assigns(:order)).to be_a_new(Order)
	  end
	end
end
