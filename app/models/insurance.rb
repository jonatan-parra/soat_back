class Insurance < ApplicationRecord
  belongs_to :vehicle
  belongs_to :tariff
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :vehicle_id, presence: true
  validates :tariff_id, presence: true
  validates :user_id, presence: true
end
