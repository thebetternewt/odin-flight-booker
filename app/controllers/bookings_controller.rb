class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    flight = Flight.find(params[:flight_id])
    @booking = flight.bookings.new
    params[:number_of_passengers].to_i.times { @booking.passengers.build }
  end

  def create
    flight = Flight.find(params[:flight_id])
    @booking = flight.bookings.build(bookings_params)
    if @booking.save
      flash[:success] = "Flight successfully booked!"
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  private

    def bookings_params
      params.require(:booking).permit(passengers_attributes: [:id, :name, :email ])
    end

end
