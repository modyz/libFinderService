class Dependency < ApplicationRecord
	belongs_to :version
	validates :name , presence: true


	def as_json
		{
			name:self.name
		}
	end

	
end
