class MainController < ApplicationController
	def index
		@items = Test.all
	end
end