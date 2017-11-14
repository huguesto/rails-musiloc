class Instrument < ApplicationRecord
  CATEGORIES = ["Wind", "String", "Percussion", "Electronic"]

  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :hourly_price, presence: true
end
