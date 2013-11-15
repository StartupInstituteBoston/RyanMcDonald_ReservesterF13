class CreateReservation < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.string :date
      t.string :time
      t.string :status
      t.timestamps
    end
    add_index :reservations, :restaurant_id
  end
end
