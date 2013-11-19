class AddCreatedAtToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :created_at, :datetime

  end
end
