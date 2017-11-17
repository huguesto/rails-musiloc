class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates :comment, presence: true
  validates :title, presence: true
  validates :rating, presence: true
end
