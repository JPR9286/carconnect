class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @vehicule = Vehicule.new
  end

  def dashboard
    @vehicules = current_user.vehicules
    #resa pour mes véhicules
    @requested_bookings = current_user.requested_bookings

    #mes résa pour des véhicules tiers
    @bookings = current_user.bookings
  end
end
