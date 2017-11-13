class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :category
      t.string :description
      t.integer :hourly_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
