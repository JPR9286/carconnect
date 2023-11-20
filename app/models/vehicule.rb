class Vehicule < ApplicationRecord
  belongs_to :user

  has_many :bookings
  validates :user_id, presence: true
end
