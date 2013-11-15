class DinersController < ApplicationController
  belongs_to :restaurant 
  has_many :reservations
  has_many :reviews

    def index
      @diners = diner.order(:name)
    end

    def new
      @diner = diner.new
    end

    def create
      @diner = diner.new(diner_params)
      @diner.save
#      redirect_to diners_path
    end

    def edit
      @diner = diner.find(params[:id])
      @diner.update_attributes(diner_params[:diner])
#     redirect_to diners_path(@diner.id)
    end

    def destroy
      @diner = diner.find(params[:id])
      @diner.destroy
#      redirect_to diners_path
   end 
                                 
    private
      def diners_params
        params.require(:diner).permit(:user_id, :street, :city, :state, :zipcode, :phone)
      end

end

