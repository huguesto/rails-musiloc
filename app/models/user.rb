class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :instruments
  has_many :bookings

  has_many :instrument_bookings, through: :instruments, source: :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :phone_number, presence: true, uniqueness: true
end
