class Restaurant < ActiveRecord::Base
    has_many :reservations

    validates :name, presence: true	# This is the what the 'restaurant_spec.rb' file is looking for in the test
    validates :street, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
    

end
