class Instrument < ApplicationRecord
  CATEGORIES = ["Wind", "String", "Percussion", "Electronic"]

  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_many :bookings
  has_attachment :photo

  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :daily_price, presence: true
  validates :address, presence: true
end
