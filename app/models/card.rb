class Card < ApplicationRecord
  has_many :has_cards
  has_many :users, through: :has_cards


  validates :credit_card_number, presence: true
  validates :cardholder_Name, presence: true
  validates :card_expiration_date, presence: true
  validates :card_security_code, presence: true
  validates :number_shares, presence: true
end
