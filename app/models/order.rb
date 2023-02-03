class Order < ApplicationRecord
  belongs_to :user
  belongs_to :model
  belongs_to :order_progress
end
