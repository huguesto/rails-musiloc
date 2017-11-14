class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :instrument, presence: true
  validates :user, presence: true
  validates :date_start, presence: true
  validates :date_end, presence: true
end

