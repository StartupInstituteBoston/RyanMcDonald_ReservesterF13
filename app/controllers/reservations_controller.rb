class ReservationsController < ApplicationController


  def index

      @reservation = Reservation.order(:datetime) 
  end

    def new
      @reservation = Reservation.new
    end

    def show
      @reservations = Reservation.find(params[:id]) #might need to add the reservations_params before params[]

    end

    def create
      @reservation = Reservation.new(reservations_params)
      @reservation.save
      redirect_to restaurant_path(@restaurant.id)
    end

    def edit
      @reservation = Reservation.find(params[:id])
      @reservation.update_attributes(reservations_params)
      redirect_to reservation_path(@reservation.id)
    end

    def destroy
      @reservation = Reservation.find(params[:id])
      @reservation.destroy
      redirect_to restaurant_path(@restaurant.id)

    end


    private
      def reservations_params
        params.require(:reservation).permit(:user_id, :datetime, :email, :status)
      end
end
