class RemoveAdressFromRestaurants < ActiveRecord::Migration[6.1]
  def change
    remove_column :restaurants, :adress, :string
  end
end
