class RemoveHourlyPriceToInstruments < ActiveRecord::Migration[5.0]
  def change
    remove_column :instruments, :hourly_price, :integer
  end
end
