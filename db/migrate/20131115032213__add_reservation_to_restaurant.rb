class AddReservationToRestaurant < ActiveRecord::Migration
  def change
  	remove_column :reservations, :date, :string
  	remove_column :reservations, :time, :string

  	add_column :reservations, :datetime, :datetime 
  	add_column :reservations, :email, :string

  	add_reference :reservations, :restaurant, index: true
  end
end
