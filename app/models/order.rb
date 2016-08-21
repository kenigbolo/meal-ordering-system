class Order < ApplicationRecord
	serialize :meal_order

	validates_presence_of :restaurant
end
