class VehiculesController < ApplicationController
  def index

    @vehicules = Vehicule.all

  end
  def show
    @vehicule = Vehicule.find(params[:id])
    @booking = Booking.new
  end

  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.user = current_user
    @vehicule.save!
    redirect_to vehicules_path(@vehicule)
  end

  def update
  end
  def edit
  end

  private

  def vehicule_params
    params.require(:vehicule).permit(:category, :model, :description, :prix)
  end
end
