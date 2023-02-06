class MainController < ApplicationController
	def index

	end

	def login
		@email = params[:email]
		@user = User.where(email: @email).first

		unless @user.blank?
			redirect_to controller: :homescreen, action: :index, id: @user.id, order_created: false
		else
			flash.alert = "User not found."
			redirect_to action: :index
		end
	end
end