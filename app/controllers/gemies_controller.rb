class GemiesController < ApplicationController


	def create
		gemy = Gemy.new(gem_params)
		gemy.save
	end 

	def recent_gems
		latest_gems = Gemy.last(5);
		render json: latest_gems
	end


	def find_dependencies
		dependencies = Gemy.get_dependencies(find_dependencies_params)
		render json: dependencies
	end

	def get_versions
		found_gem = Gemy.find_by_name(get_version_params)
	end

	def get_gem
		g = Gemy.find_by_name(params[:name])
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
