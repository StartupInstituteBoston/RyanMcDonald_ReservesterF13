class ReservationsController < ApplicationController

    def new
      @reservation = Reservation.new
    end

    def show
      @reservations = Reservation.find(params[:id]) #might need to add the reservations_params before params[]

    end

    def create
      @reservation = Reservation.new(reservation_params)
      @reservation.save
      redirect_to new_restaurant_reservation_path
    end

    def edit
      @reservation = Reservation.find(params[:id])
      @reservation.update_attributes(reservations_params[:reservation])
      redirect_to restaurant_reservation_path(@reservation.id)
    end

    def destroy
      @reservation = Reservation.find(params[:id])
      @reservation.destroy
      redirect_to restaurant_path(@restaurant.id)

    end


    private
      def reservations_params
        params.require(:reservation).permit(:user_id, :datetime, :restaurant_id, :status)
      end
end
