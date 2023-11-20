class CreateVehicules < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicules do |t|
      t.string :category
      t.string :model
      t.string :description
      t.float :prix
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
