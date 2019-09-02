class Tariff < ApplicationRecord

  has_many :insurances

  validates :code, presence: true
  validates :year, presence: true
  validates :vehicle_class, presence: true
  validates :subtype, presence: true
  validates :age, presence: true
  validates :commercial_rate, presence: true
  validates :premium_value, presence: true
  validates :fosyga_contribution, presence: true
  validates :subtotal_premium_and_contribution, presence: true
  validates :runt_rate, presence: true
  validates :total_to_pay, presence: true

end
