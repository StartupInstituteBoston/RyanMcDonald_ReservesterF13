class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description

      t.string :street
      t.string :city
      t.string :state
      t.string :zip	# if you use integers then you will destroy the leading '0'

      t.string :phone	# easier for people to use but if you need to send texts then save as some other format
    end
  end
end
