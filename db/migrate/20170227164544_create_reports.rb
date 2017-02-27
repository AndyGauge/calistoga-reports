class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :store, foreign_key: true
      t.datetime :date
      t.decimal :amount, precision: 10, scale: 2
      t.decimal :deposit, precision: 10, scale: 2
      t.string :notes

      t.timestamps
    end
  end
end
