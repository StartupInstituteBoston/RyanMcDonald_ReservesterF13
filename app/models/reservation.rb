class Reservation < ActiveRecord::Base
  belongs_to :restaurant, dependent: :destroy
  validates_presence_of :restaurants 
  belongs_to :diner
 # has_many :tables

end
