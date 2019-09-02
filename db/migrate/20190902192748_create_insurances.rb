class CreateInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :vehicle, null: false, foreign_key: true
      t.references :tariff, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
