class CreateCovidQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :covid_questions do |t|
      t.string :temperature
      t.boolean :travel
      t.boolean :contact
      t.boolean :symptoms
      t.string :name
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
