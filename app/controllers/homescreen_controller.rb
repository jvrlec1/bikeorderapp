class HomescreenController < ApplicationController
	def index
		@user_id = params[:id]
		@orders = Order.where(user_id: @user_id).joins(:order_progress, model: :brand).select("orders.*, order_progresses.name, brands.name")
	end

	def order
		redirect_to controller: :order, action: :index, id: params[:id]
	end
end