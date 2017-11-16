class BookingsController < ApplicationController

  before_action :set_instrument, only: :create
  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.instrument = @instrument
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render 'instruments/show'
    end
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:instrument_id])
  end

  def booking_params
    params.require(:booking).permit(:date_end, :date_start)
  end
end
