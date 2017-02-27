class AddNumberToStores < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :number, :string
  end
end
