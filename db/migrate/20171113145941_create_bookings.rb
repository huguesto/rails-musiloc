class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :instrument, foreign_key: true
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
