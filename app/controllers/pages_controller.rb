class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    # initiliasation pour afficher sur le dashboard
  end
end
