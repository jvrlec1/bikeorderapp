class OrderController < ApplicationController
	before_action :check_source

	def index
		@user_id = params[:id]
		@brands = Brand.all
		@models = @selected_brand&.models || []
	end

	private

	def check_source
		@errors = []
		if params[:commit].nil?
			selection
		elsif params[:commit] == "Cancel"
			redirect_to controller: :homescreen, action: :index, id: params[:id]
		else
			selection
			@order = create_order
			@order.save
			@errors = @order.errors
			redirect_to controller: :homescreen, action: :index, id: params[:id], order_created: true unless @errors.present?
		end
	end

	def create_order
		Order.new(user_id: params[:id], model_id: @selected_model.id, order_progress_id: OrderProgress.find_by(name: "Active").id, 
			service_date: @service_date, model_year: @model_year, mileage: @mileage, 
			service_1_flag: @s1.state, service_2_flag: @s2.state, service_3_flag: @s3.state, service_4_flag: @s4.state)
	end

	def selection
		@selected_brand = Brand.find_by(id: params[:brand].presence)
		@selected_model = Model.find_by(id: params[:model].presence)
		@model_year = params[:model_year].presence
		@mileage = params[:mileage].presence
		@service_date = params[:date].presence

		@services = params[:services] || []
		@s1 = Service.new(@services.include?("s1"), @selected_model, 1)
		@s2 = Service.new(@services.include?("s2"), @selected_model, 2)
		@s3 = Service.new(@services.include?("s3"), @selected_model, 3)
		@s4 = Service.new(@services.include?("s4"), @selected_model, 4)

		@full_price = @s1.price + @s2.price + @s3.price + @s4.price
		@discount = calculate_discount(@full_price, @services)
		@price = @discount.apply_discount(@full_price)
	end

	def calculate_discount(full_price, services)
		if services.count == 4
			Discount.new(40.0, false)
		elsif (services & ["s1", "s2", "s3"]).count == 3
			Discount.new(20.0, true)
		elsif (services & ["s2", "s3"]).count == 2
			Discount.new(20.0, false)
		elsif (services & ["s1", "s4"]).count == 2
			Discount.new(15.0, true)
		else
			Discount.new(0, false)
		end
	end
end