class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.create(restaurant: params[:order][:restaurant], status: "Active", meal_order: [])
		flash[:notice] = "Order created Successfully"
		# binding.pry
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
			@orders = Order.where.not("status = ?", "Active")
			# binding.pry
		end
		respond_to do |format|
			format.html {redirect_to orders_url}
        	format.js
    	end
	end

	def status
		order = Order.find(params[:id])
		order.status = params[:status]
		order.save
		redirect_to orders_url
	end
end
