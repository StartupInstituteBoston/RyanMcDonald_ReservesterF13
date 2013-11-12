class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.order(:name)
	end

        def new
            @restaurant = Restaurant.new
        end

        def create
            @restaurant = Restaurant.new(restaurant_params)
            @restaurant.save
            redirect_to restaurants_path
        end

        def edit
          @restaurant = Restaurant.find(params[:id])
          @restaurant.update_attributes(restaurant_params[:restaurant])
          redirect_to restaurants_path(@restaurant.id)
        end

        def destroy
          @restaurant = Restaurant.find(params[:id])
          @restaurant.destroy
          redirect_to restaurants_path
        end 
 
      private
        def restaurants_params
          params.require(:restaurant).permit(:name, :description)
        end

end
