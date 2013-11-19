class Reservation < ActiveRecord::Base
  belongs_to :restaurant 
  belongs_to :diner
 # has_many :tables

end
