class Diner < ActiveRecord::Base
  has_many :reservations
  has_many :reviews

        def index
                                
        end

end

