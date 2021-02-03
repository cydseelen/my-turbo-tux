class TuxesController < ApplicationController
  include Pundit
  skip_after_action :verify_authorized, only: [:home]

  skip_before_action :authenticate_user!, only: [:home]

  def show
    @tux = Tux.find(params[:id])
    authorize @tux
    @booking = Booking.new
  end

  def index
    @tuxes = policy_scope(Tux)

  end

  private

  def tux_params
    params.require(:tux).permit(:description, :price)
  end
end
