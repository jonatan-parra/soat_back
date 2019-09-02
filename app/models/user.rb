class User < ApplicationRecord

  has_many :has_cards
  has_many :cards, through: :has_cards
  has_many :insurances

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :document_type, presence: true
  validates :document_number, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :auth_token, presence: true


  after_initialize :generate_auth_token


  def generate_auth_token
    unless auth_token.present?
      # Generate token
      self.auth_token = SecureRandom.hex
    end
  end
end
