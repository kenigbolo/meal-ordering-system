class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.create(restaurant: params[:order][:restaurant], meal_order: [], status: "Active")
		flash[:notice] = "Order created Successfully"
		redirect_to orders_url
	end

	def edit
		# binding.pry
		session[:order_id] = params[:id]
		@meal = Meal.new

		respond_to do |format|
			format.html {redirect_to orders_url}
        	format.js
    	end
	end

	def update
		# binding.pry
		meal = Meal.create(name: params[:name], price: params[:price].to_f, user_id: current_user.id )
		order = Order.find(session[:order_id])

		order.meal_order.push(meal)
		redirect_to orders_url
	end
end
