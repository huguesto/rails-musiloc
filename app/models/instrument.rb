class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :category, presence: true
  validates :hourly_price, presence: true
end
