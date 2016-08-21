class Meal < ApplicationRecord
	belongs_to :user

	validates_presence_of :name, :price
	validates_numericality_of :price
end
