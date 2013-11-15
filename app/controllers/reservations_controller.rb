class ReservationsController < ApplicationController

    def new
      @reservation = Reservation.new
    end

    def show
      @reservations = Reservation.find(params[:id]) #might need to add the reservations_params before params[]
      @restaurant = @reservation.restaurant
    end

    def create
      @reservation = Reservation.new(reservation_params)
      @reservation.save
#      redirect_to restaurants_path
    end

    def edit
      @reservation = Reservation.find(params[:id])
      @reservation.update_attributes(reservations_params[:reservation])
#      redirect_to reservation_path(@reservation.id)
    end

    def destroy
      @reservation = Reservation.find(params[:id])
      @reservation.destroy
#      redirect_to restaurant_path(@restaurant.id)

    end


    private
      def reservations_params
        params.require(:reservation).permit(:id, :user, :date, :time, :restaurant, :status)
      end
end
