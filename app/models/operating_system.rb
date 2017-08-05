class OperatingSystem < ApplicationRecord
	has_many :gemies


	def as_json(options)
		{
			name:self.name,
			id:self.id
		}
	end 
end
