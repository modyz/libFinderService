class OperatingSystemsController < ApplicationController

	def index
		render json: OperatingSystem.all
	end

	
end
