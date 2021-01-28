class TuxesController < ApplicationController

  def show
    # authorize @tux
    @tux = Tux.find(params[:id])
  end

  
  def index
    @tuxes = Tux.all
  end
  
  private
  
  def tux_params
  end
end
