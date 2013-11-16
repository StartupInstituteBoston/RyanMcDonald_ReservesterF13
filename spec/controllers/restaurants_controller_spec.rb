require 'spec_helper.rb'

describe RestaurantsController do
	context "#index" do
		it "returns all restaurants" do
			(1..50).each {Restaurant.create name: "Yo mama's"}
			
			get :index

			assigned_restaurants = assigns :restaurants
			expected_restaurants = Restaurant.order(:name) # This should contain the 50 "Yo mama's" that we created in alphabetic order
			assigned_restaurants.should == expected_restaurants
		end
	end
end