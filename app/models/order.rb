class Order < ApplicationRecord
  belongs_to :user
  belongs_to :model
  belongs_to :order_progress
  delegate :brand, to: :model

  validates :user_id, :model_id, :order_progress_id, :service_date, :mileage, presence: true
  validate :validate_model_year

private

  def validate_model_year
    if self.model_year < self.model.last_supported_year
      errors.add(:field, 'error message')
    end
  end
end