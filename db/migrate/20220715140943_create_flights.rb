class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :datetime_depart
      t.integer :duration
      t.references :hippoport_depart, null: false, foreign_key: true
      t.references :hippoport_arrival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
