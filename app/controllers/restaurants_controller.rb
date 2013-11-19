class RestaurantsController < ApplicationController

  before_filter :authenticate_owner!, :only => [:new, :create]
  before_filter :owner_signed_in?, :only => [:edit, :update, :destroy]

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

    end

    def update
      @restaurant = Restaurant.find(params[:id])
      @restaurant.update(restaurants_params)
      redirect_to restaurant_path(@restaurant)
    end

    def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      redirect_to :action => 'index'
    end 

  private
    def restaurants_params
      params.require(:restaurant).permit(:name, :description, :street, :city, :state, :zipcode)
    end

end
