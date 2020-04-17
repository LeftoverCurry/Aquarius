class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :frequency
      t.integer :amount
      t.string :unit_of_measure
      t.string :location
      t.references :garden, null: false, foreign_key: true

      t.timestamps
    end
  end
end
