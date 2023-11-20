class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicule

<<<<<<< HEAD
=======
  validates :user_id, presence: true
  validates :vehicule_id, presence: true
  validates :date_debut, presence: true
  validates :date_fin, presence: true, comparison: { greater_than_or_equal_to: :date_debut }
  validates :total_prix, presence: true, comparison: { greater_than: 0 }
>>>>>>> e61e5dfe1084ec1e285c5b58c84a0571ff7b96ee

end
