class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params[:id])
    if @booking.save
    redirect_to booking_path(@booking)
    else
    render :new
    end
  end

  def delete
    @booking = Booking.find(booking_params[:id])
    @booking.delete

    redirect_to Booking_path(@booking)
  end

private

def booking_params
params.require(:booking).permit(:id, :date_rented, :date_returned)
end

end
