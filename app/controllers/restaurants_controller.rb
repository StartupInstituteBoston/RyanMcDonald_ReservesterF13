class RestaurantsController < ApplicationController
  	def index
  		@restaurants = Restaurant.order(:name)
  	end

    def show
        @restaurant = Restaurant.find(params[:id]) # changed this from :id to :name. "params" is the hash that is created by the "routes" file and it gets stored in our "Controller"
        @reservation = Reservation.new
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurants_params)
        @restaurant.save
        redirect_to @restaurant
    end

    def edit
      @restaurant = Restaurant.find(params[:id])
      @restaurant.update_attributes(restaurant_params[:restaurant])
 #     redirect_to restaurants_path(@restaurant.id)
    end

    def destroy
      @restaurant = Restaurant.find(restaurants_params)
      @restaurant.destroy
      redirect_to restaurants_path
    end 

  private
    def restaurants_params
      params.require(:restaurant).permit(:name, :description, :street, :city, :state, :zipcode)
    end

end
