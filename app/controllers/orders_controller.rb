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
		session[:order_id] = params[:id]
		@meal = Meal.new

		respond_to do |format|
			format.html {redirect_to orders_url}
        	format.js
    	end
	end

	def update
		meal = Meal.create(name: params[:meal][:name], price: params[:meal][:price].to_f, user_id: current_user.id )
		order = Order.find(session[:order_id])

		order.meal_order.push(meal)
		order.save
		flash[:notice] = "Meal added Successfully"
		redirect_to orders_url
	end

	def show
		@order = Order.find(params[:id])
	end

	def filter
		filter = params[:filter]

		if filter == "Active"
			@orders = Order.where("status = ?", filter)
		else
			@orders = Order.where("status != ?", filter)
		end
		respond_to do |format|
			format.html {redirect_to orders_url}
        	format.js
    	end
		# redirect_to orders_url
	end
end
