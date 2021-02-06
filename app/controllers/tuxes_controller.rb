class TuxesController < ApplicationController
  include Pundit
  skip_after_action :verify_authorized, only: [:home]
  before_action :skip_authorization #

  skip_before_action :authenticate_user!, only: [:home]

  def new
    @tux = Tux.new
    authorize @tux
  end

  def create
    @tux = Tux.new(tux_params)
    @tux.user = current_user
    if @tux.save!
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

    if params[:query].present?

      @tuxes = Tux.search_by_name_and_description(params[:query])

    else
      @tuxes = Tux.all
    end
  end

  def edit
    @tux = Tux.find(params[:id])
  end
  def update
    @tux = Tux.find(params[:id])
    @tux.update(tux_params)
    redirect_to tux_path(@tux)
    authorize @tux
end

  def destroy
    @tux = Tux.find(params[:id])
    @tux.destroy
    redirect_to root_path
    authorize @tux
  end

  private

  def tux_params
    params.require(:tux).permit(:name, :description, :price, :photo)
  end
end
