class TuxesController < ApplicationController
  def index
    # @tuxes = policy.scope(Tux)
    @tuxes = Tux.all
  end
end
