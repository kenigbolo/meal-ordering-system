class OrdersController < ApplicationController
	require_dependency 'yaml'

	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.create(restaurant: params[:order][:restaurant], status: "Active", meal_order: [])
		redirect_to orders_url
	end

	def edit
		session[:order_id] = params[:id]
		order = Order.where("id = ?", params[:id])[0]
		@can_add = true
		@meal = Meal.new
		
		order.meal_order.each do |meal|
			if meal.user.id == current_user.id
				@can_add = false
			end
		end

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
