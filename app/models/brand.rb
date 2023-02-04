class Brand < ApplicationRecord
	has_many :models
	has_many :orders, through: :models
end
