class AddAddressToCustomers < ActiveRecord::Migration[7.2]
  def change
    add_column :customers, :address, :string
  end
end
