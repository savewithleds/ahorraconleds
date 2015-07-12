class BulbsController < ApplicationController
	
	#GET /bulbs
	def index
		@bulbs = Bulb.all
	end
	#GET /bulbs/:id 
	def show
		@bulb = Bulb.find(params[:id])
	end
	#GET /bulbs/new
	def new
		@bulb = Bulb.new
	end
end