class ReviewsController < ApplicationController

  before_action :set_review, only: [:edit, :update]

  def edit
  end

  def update
    @booking.update(booking_params)
    if @booking.save
      redirect_to bookings_path(@booking)
    else
      render :edit
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:review, :rating)
  end
end
