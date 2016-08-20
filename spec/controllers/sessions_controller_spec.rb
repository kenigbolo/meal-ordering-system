require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

user = User.new
	describe "GET index" do
	  context "When user is not signed in" do
	    it "Should have no user in the session" do
	  	  expect(session[:user_id]).to eq(nil)
	    end
	  end

	  context "When the user signs out" do
		it "Signs out the users" do
		  get :destroy
		  expect(session[:user_id]).to eq(nil)
		end
	  end
	end

end