class Vehicule < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  validates :user_id, presence: true
  has_one_attached :photo

end
