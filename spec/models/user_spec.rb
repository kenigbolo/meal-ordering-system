require 'rails_helper'

RSpec.describe User, type: :model do
	user = User.new
	before(:all) do
		user.provider = "facebook"
		user.user_code = "1355889534440499"
		user.name = "Kenigbolo Meya Stephen"
  	user.email = "expensivestephen@gmail.com"
  end

  	describe ".from_omniauth" do
  		it {is_expected.to be_valid}
  	end

  	describe ".from_omniauth" do
  		it "saves new user" do
  			expect(User.all).should_not be_nil
  		end
  	end
    
    context "When a new User is initialized" do
      it "is a new user" do
        expect(user).to be_a_new(User)
      end
      
      it "should be a valid User object" do
        expect(user).to be_valid
      end      
    end

    context "When a User details are saved" do
      it "is expected to save a user object" do
        expect(user).to be_a_new(User)
      end

      it "should be a valid User object" do
        expect(user).to be_valid
      end

      it "is expected to save all user properties defined" do
        expect(user.provider).to eq("facebook")
        expect(user.user_code).to eq("1355889534440499")
        expect(user.name).to eq("Kenigbolo Meya Stephen")
        expect(user.email).to eq("expensivestephen@gmail.com")
      end
    end
end
