class Owner::InstrumentsController < ApplicationController
  before_action :set_instrument, only: [:show, :edit, :update, :destroy]

  def index
    @instruments = Instrument.all
  end

  def show
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @instrument.update(instrument_params)
    if @instrument.save
      redirect_to instrument_path(@instrument)
    else
      render :edit
    end
  end

  def destroy
    @instrument.destroy
    redirect_to owner_instruments_path
  end

  private

  def set_instrument
    @instrument = Instrument.find(params[:id])
  end

  def instrument_params
    params.require(:instrument).permit(:name, :category, :description, :daily_price, :user_id, :address, :photo)
  end
end
