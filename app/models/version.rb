class Version < ApplicationRecord
	has_many :dependencies
	belongs_to :gemy
	accepts_nested_attributes_for :dependencies
end
