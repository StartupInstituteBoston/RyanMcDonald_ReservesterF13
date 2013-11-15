class CreateRestaurant < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description

      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode   # Don't use integer to maintain leading 0
    end
  end
end
