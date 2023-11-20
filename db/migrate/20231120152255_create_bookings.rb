class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :date_debut
      t.date :date_fin
      t.float :total_prix
      t.string :commentaire
      t.references :user, null: false, foreign_key: true
      t.references :vehicule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
