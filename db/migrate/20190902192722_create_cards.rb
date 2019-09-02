class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :credit_card_number
      t.string :cardholder_Name
      t.date :card_expiration_date
      t.integer :card_security_code
      t.integer :number_shares

      t.timestamps
    end
  end
end
