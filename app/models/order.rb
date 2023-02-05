class Order < ApplicationRecord
  belongs_to :user
  belongs_to :model
  belongs_to :order_progress
  delegate :brand, to: :model

  validates :user_id, :model_id, :order_progress_id, :service_date, :mileage, presence: true
  validate :valid_model_year
  validate :service_selected

private

  def valid_model_year
    if self.model_year < self.model.last_supported_year
      errors.add(:model_year, 'Model year is not supported.')
    end
  end

  def service_selected
    unless [self.service_1_flag, self.service_2_flag, self.service_3_flag, self.service_4_flag].include?("1")
      errors.add(:services, 'No service selected.')
    end
  end

end