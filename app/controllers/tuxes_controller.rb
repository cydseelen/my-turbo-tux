class TuxesController < ApplicationController
  def show
    # authorize @tux
    @tux = Tux.find(params[:id])
  end

  def tux_params
    params.require(:tux).permit(:description, :price)
  end
end
