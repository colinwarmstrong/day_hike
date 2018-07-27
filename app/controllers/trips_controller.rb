class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.includes(:trails).find(params[:id])
  end
end
