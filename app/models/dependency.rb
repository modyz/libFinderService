class Dependency < ApplicationRecord
	belongs_to :version
	validates :name , presence: true


	def as_json(options={})
		{
			name:self.name
		}
	end

	
end
