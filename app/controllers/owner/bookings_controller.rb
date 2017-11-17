class Owner::BookingsController < ApplicationController

  def index
    @owner_bookings = current_user.instrument_bookings
  end
end


