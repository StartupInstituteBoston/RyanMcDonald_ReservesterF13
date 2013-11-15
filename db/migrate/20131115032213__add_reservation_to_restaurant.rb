class AddReservationToRestaurant < ActiveRecord::Migration
  def change
  	remove_column :reservations, :date, :string
  	remove_column :reservations, :time, :string

  	add_column :reservations, :datetime, :datetime 
  	add_column :reservations, :email, :string
  end
end
