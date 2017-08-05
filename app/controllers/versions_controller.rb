class VersionsController < ApplicationController

	def add_verison
		byebug
		gemy = Gemy.find_by_name(params[:name]);
		gemy.versions.create(version_params)	
	end


	private
	def version_params
		params.require(:version).permit(:version_number,dependencies_attributes:[[:name]])
	end 

end
