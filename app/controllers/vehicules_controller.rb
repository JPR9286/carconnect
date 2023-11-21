class VehiculesController < ApplicationController
  def index
    @vehicule = Vehicule.all
  end
  def show
    @vehicule = Vehicule.find(params[:id])
  end
  def new
    @vehicule = Vehicule.new
    @vehicule.save
  end
  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.save

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
