class BookingsController < ApplicationController

  before_action :set_instrument, only: [:create]

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new(booking_params)
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
    params.require(:booking).permit(:instrument_id, :user_id, :date_start, :date_end)
  end
end
