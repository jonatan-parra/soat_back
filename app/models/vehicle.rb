class Vehicle < ApplicationRecord
  has_many :insurances

  validates :vehicle_class, presence: true
  validates :subtype, presence: true
  validates :age, presence: true
  validates :number_passengers, presence: true
  validates :cylinder, presence: true
  validates :tons, presence: true
end
