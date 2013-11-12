class Restaurant < ActiveRecord::Base
  has_many :reservations, :tables, #:diners

        def index
          		
	end
end
