class BookingsController < ApplicationController
  def index
  end
  def show
  end
  def new

  end
  def create
    @vehicule = Vehicule.find(params[:vehicule_id])
    @booking = Booking.new(booking_params)
    @booking.vehicule = @vehicule
    @booking.total_prix = (@booking.date_fin - @booking.date_debut).to_i * @vehicule.prix
    @booking.user = current_user
    if @booking.save!
      # suppression class D-NONE de la data-toggle-target="tooglablebookingElement"
    #
    #  redirect_to  vehicule_bookings_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.update(status: "accepted")
    redirect_to dashboard_path, status: :see_other
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.update(status: "declined")
    redirect_to dashboard_path, status: :see_other
  end



  private
  def booking_params
    params.require(:booking).permit(:date_debut, :date_fin, :commentaire)
  end


end
