class Version < ApplicationRecord
	has_many :dependencies
	belongs_to :gemy
	accepts_nested_attributes_for :dependencies
    validates :version_number , presence: true


    def as_json(options={})
    	{
    		version_number:self.version_number,
    		dependencies: self.dependencies
    	}
    end

end
