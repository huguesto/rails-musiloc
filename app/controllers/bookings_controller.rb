class BookingsController < ApplicationController

  before_action :set_booking, only: :destroy
  before_action :set_instrument, only: :create

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.instrument = @instrument
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render 'instruments/show'
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_instrument
    @instrument = Instrument.find(params[:instrument_id])
  end

  def booking_params
    params.require(:booking).permit(:instrument_id, :user_id, :date_start, :date_end)
  end
end


