class AddAdressToVehicules < ActiveRecord::Migration[7.1]
  def change
    add_column :vehicules, :address, :string
  end
end
