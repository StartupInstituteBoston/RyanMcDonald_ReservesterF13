require 'spec_helper'
describe Restaurant do	# This is the only parameter that has to be relatable to the class
	context "validation" do	# Using strings here makes the test more conversational and readable by others 
		it "requires a name" do	# We are telling the developer that this is a test to see if the model class validates a "name"
			
			restaurant = Restaurant.new()	# Here you try creating an instance without a name to try and break the test
			restaurant.valid?.should be_false	# When you use .valid? it attempts to validate, if you didn't then the machine wouldn't vaildate until it saved (i.e. ".create" or ".save")
		end
	end
end
