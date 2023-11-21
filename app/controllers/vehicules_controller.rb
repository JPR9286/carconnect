class VehiculesController < ApplicationController
  def index
  end
  def show
    @vehicule = Vehicule.find(params[:id])
    @booking = Booking.new
  end
  def new

  end
  def create

  end
  def update
  end
  def edit
  end
end
