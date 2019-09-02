class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_class
      t.string :subtype
      t.integer :age
      t.integer :number_passengers
      t.integer :cylinder
      t.integer :tons

      t.timestamps
    end
  end
end
