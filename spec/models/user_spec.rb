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
  			expect(User.from_omniauth(set_valid_omniauth)).to be_a User
  		end
  	end
  
end
