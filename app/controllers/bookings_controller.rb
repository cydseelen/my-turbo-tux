class BookingsController < ApplicationController
  def new

    @tux = Tux.find(params[:tux_id])

    @booking = Booking.new(params[:id])
    authorize @booking

  end

  def create

    @tux = Tux.find(params[:tux_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.tux = @tux
    if @booking.save
    redirect_to new_tux_booking_path(@tux)

    authorize @booking

    else
    render "tux/show"
    end
  end

  def delete
    @booking = Booking.find(booking_params[:id])
    @booking.delete

    redirect_to booking_path(@booking)
  end

private

def booking_params
params.require(:booking).permit(:id, :date_rented, :date_returned)
end

end
