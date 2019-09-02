class CreateTariffs < ActiveRecord::Migration[6.0]
  def change
    create_table :tariffs do |t|
      t.integer :code
      t.integer :year
      t.string :vehicle_class
      t.string :subtype
      t.string :age
      t.float :commercial_rate
      t.float :premium_value
      t.float :fosyga_contribution
      t.float :subtotal_premium_and_contribution
      t.float :runt_rate
      t.float :total_to_pay

      t.timestamps
    end
  end
end
