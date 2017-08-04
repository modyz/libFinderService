class Gemy < ApplicationRecord
	has_many :versions
	belongs_to :operating_system
	accepts_nested_attributes_for :versions


	def self.get_dependencies(gems)
		gemies = Gemy.where(name:gems.map{|g| g[:name]})
		versions = Version.where(id:gemies.map(&:id),version_number:gems.map{|g| g[:version]})
		dependencies = Dependency.where(version_id:versions.map(&:id))
		return dependencies
	end 

	



	#overriding the default as_json method
	def as_json(options)
		{
			name:self.name
		}
	end

end