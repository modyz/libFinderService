class Dependency < ApplicationRecord
	belongs_to :version


	def as_json
		{
			name:self.name
		}
	end

	
end
