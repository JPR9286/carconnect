class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @vehicule = Vehicule.new
  end

  def dashboard
    @vehicules = current_user.vehicules
    @bookings = current_user.bookings
    @requested_bookings = current_user.requested_bookings
    # initiliasation pour afficher sur le dashboard
  end


end
