class CreateHippoports < ActiveRecord::Migration[7.0]
  def change
    create_table :hippoports do |t|
      t.string :code

      t.timestamps
    end
  end
end
