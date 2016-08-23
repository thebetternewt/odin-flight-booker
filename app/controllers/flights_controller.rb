class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
    @search_flights = flight_search
  end

  private

  def flight_search
    flights = Flight.order(:departs_at)
    flights = flights.where("from_airport_id = ?", params[:from_airport])
    flights = flights.where("to_airport_id = ?", params[:to_airport])
    if departure_date = params[:departure_date]
      flights = flights.where(departs_at: departure_date.to_datetime..departure_date.to_datetime.end_of_day)
    end
  end


end
