class AddAddressToInstruments < ActiveRecord::Migration[5.0]
  def change
    add_column :instruments, :address, :string
  end
end
