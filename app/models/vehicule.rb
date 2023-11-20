class Vehicule < ApplicationRecord
  belongs_to :user

  has_many :bookings
  validates :user_id, presence: true
  has_many_attached :photos
end
