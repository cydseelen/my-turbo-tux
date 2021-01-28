class TuxesController < ApplicationController

  def show
    # authorize @tux
    @tux = Tux.find(params[:id])
  end

  def tux_params
  end

  def index
    # @tuxes = policy.scope(Tux)
    @tuxes = Tux.all
  end
end
