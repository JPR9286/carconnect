class Vehicule < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  validates :user_id, presence: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
