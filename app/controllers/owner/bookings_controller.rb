class Owner::BookingsController < ApplicationController

  def index
    @bookings = current_user.instrument_bookings
  end
end


