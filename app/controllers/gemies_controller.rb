class GemiesController < ApplicationController


	def create

		gemy = Gemy.new(gem_params)
		if(gemy.save)
			render json: {message:"gem has been added succefully", gem: gemy}

		else
			render json: {message:gemy.errors}
		end
	end 

	def recent_gems
		latest_gems = Gemy.last(7);
		render json: latest_gems
	end


	def find_dependencies
		dependencies = Gemy.get_dependencies(find_dependencies_params)
		render json: dependencies
	end

	def get_gem
		g = Gemy.find_by_name(params[:name])
		render json: {gem:g.as_json}
	end








	private
		def gem_params
			params.require(:gem).permit(:name,:operating_system_id,versions_attributes:[:version_number,dependencies_attributes:[:name]])
		end 

		def find_dependencies_params
			params.require(:gems).permit(:name,:operating_system_id,:version)
		end 

		def get_version_params
			params.require(:gem).permit(:name)
		end 

end
