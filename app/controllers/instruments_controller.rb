class InstrumentsController < ApplicationController
  before_action :set_instrument, only: :show

  def index
    @instruments = Instrument.all

    @instruments = Instrument.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@instruments) do |instrument, marker|
      marker.lat instrument.latitude
      marker.lng instrument.longitude
      marker.infowindow render_to_string(partial: "/instruments/map_box", locals: { instrument: instrument })
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end
end
