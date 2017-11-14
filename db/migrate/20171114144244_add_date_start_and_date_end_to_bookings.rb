class AddDateStartAndDateEndToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :date_start, :date
    add_column :bookings, :date_end, :date
  end
end
