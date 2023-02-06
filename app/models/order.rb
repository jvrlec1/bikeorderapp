class Order < ApplicationRecord
  belongs_to :user
  belongs_to :model
  belongs_to :order_progress
  delegate :brand, to: :model

  validates :user_id, :model_id, :order_progress_id, presence: true
  validate :valid_mileage
  validate :valid_service_date
  validate :valid_model_year
  validate :service_selected

private

  def valid_mileage
    if mileage.nil?
      errors.add(:mileage, 'Mileage is required.')
      return
    end

    errors.add(:mileage, 'Mileage cannot be negative.') if mileage < 0
  end

  def valid_service_date
    if service_date.nil?
      errors.add(:service_date, 'Service date is required.')
      return
    end

    errors.add(:service_date, 'Service date cannot be in the past.') if service_date < DateTime.now
  end

  def valid_model_year
    if model_year.nil?
      errors.add(:model_year, 'Model year is required.')
      return
    end

    errors.add(:model_year, 'Model year is not supported.') if model_year < model.last_supported_year
    errors.add(:model_year, 'Model year cannot be in the future.') if model_year > Date.current.year
  end

  def service_selected
    services = [service_1_flag, service_2_flag, service_3_flag, service_4_flag]

    errors.add(:services, 'At least one service needs to be selected.') unless services.include?("1")
  end

end