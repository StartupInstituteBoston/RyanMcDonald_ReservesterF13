class Restaurant < ActiveRecord::Base
    belongs_to :owner
    has_many :reservations
 
    accepts_nested_attributes_for :reservations

    validates :name, presence: true	# This is the what the 'restaurant_spec.rb' file is looking for in the test
    validates :street, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
    

end
