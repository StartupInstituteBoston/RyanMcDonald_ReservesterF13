class StaticController < ApplicationController

	before_filter :authenticate_owner!
	
	def root

	end

end
