class Order < ApplicationRecord
	serialize :meal_order

	validates_presence_of :restaurant

	self.per_page = 5
end
