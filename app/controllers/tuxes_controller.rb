class TuxesController < ApplicationController
  include Pundit
  skip_after_action :verify_authorized, only: [:home]

  skip_before_action :authenticate_user!, only: [:home]

  def new
    @tux = Tux.new
    authorize @tux
  end

  def create
    @tux = Tux.new(tux_params)
    if @tux.save
      redirect_to tux_path(@tux)

      authorize @tux

    else
      render 'new'
    end
  end

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
