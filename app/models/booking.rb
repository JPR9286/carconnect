class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule

  validates :user_id, presence: true
  validates :vehicule_id, presence: true
  validates :date_debut, presence: true
  validates :date_fin, presence: true, comparison: { greater_than_or_equal_to: :date_debut }
  validates :total_prix, presence: true, comparison: { greater_than: 0 }

end
