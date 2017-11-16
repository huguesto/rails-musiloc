class AddDailyPriceToInstruments < ActiveRecord::Migration[5.0]
  def change
    add_column :instruments, :daily_price, :integer
  end
end
